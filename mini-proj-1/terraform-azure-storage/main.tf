# Provider configuration for Azure
# Check FAQ for more details
provider "azurerm" {
  features {}

  # Specifies the Azure subscription where Terraform will create resources.
  subscription_id = "xxxxxxxxxxxxxxxxxxxxxxxxxxxx"

  # Prevents automatic registration of new Azure resource providers.
  resource_provider_registrations = "none"
}

# Create a new Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# Create a new Storage Account
resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
