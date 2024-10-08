# Provider configuration for Azure
provider "azurerm" {
  features {}

  # Specifies the Azure subscription where Terraform will create resources.
  subscription_id = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

  # Prevents automatic registration of new Azure resource providers.
  resource_provider_registrations = "none"
}

# Create a Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# Create a Virtual Network
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = [var.vnet_address_space]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

# Create a Subnet for the AKS cluster
resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.subnet_address_prefix]
}

# Create an Azure Kubernetes Service (AKS) cluster
resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_cluster_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name           = "default"
    node_count     = 2
    vm_size        = "Standard_DS2_v2"
    vnet_subnet_id = azurerm_subnet.subnet.id
  }

  # Chcek FAQ Section for more details
  identity {
    type = "SystemAssigned"
  }

  # Enable RBAC for security
  # Chcek FAQ Section for more details
  role_based_access_control_enabled = true # Defaults to true, set to false to disable RBAC

  network_profile {
    network_plugin = "azure"
    network_policy = "calico"
    dns_service_ip = "10.2.0.10"
    service_cidr   = "10.2.0.0/24"
  }

  tags = {
    environment = "Terraform-AKS"
  }
}

# Obtain Kubernetes credentials after the cluster is created
resource "null_resource" "kubectl_config" {
  provisioner "local-exec" {
    command = "az aks get-credentials --resource-group ${azurerm_resource_group.rg.name} --name ${azurerm_kubernetes_cluster.aks.name} --overwrite-existing"
  }

  depends_on = [azurerm_kubernetes_cluster.aks]
}
