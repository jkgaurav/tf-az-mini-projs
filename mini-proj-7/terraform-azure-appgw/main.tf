# Provider configuration for Azure
provider "azurerm" {
  features {}

  # Specifies the Azure subscription where Terraform will create resources.
  subscription_id = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

  # Prevents automatic registration of new Azure resource providers.
  resource_provider_registrations = "none"
}
