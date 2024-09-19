# Provider configuration for Azure
provider "azurerm" {
  features {}

  # Specifies the Azure subscription where Terraform will create resources.
  subscription_id = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

  # Prevents automatic registration of new Azure resource providers.
  resource_provider_registrations = "none"
}

# Create a Resource Group (if not using the one from the previous project)
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

# Create a Subnet within the VNet
resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.subnet_address_prefix]
}
