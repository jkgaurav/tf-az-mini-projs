# Provider configuration for Azure
provider "azurerm" {
  features {}

  # Specifies the Azure subscription where Terraform will create resources.
  subscription_id = "4788db51-f5bb-442d-8cdd-a6debf476da9"

  # Prevents automatic registration of new Azure resource providers.
  resource_provider_registrations = "none"
}
