# Provider configuration for Azure
provider "azurerm" {
  features {}

  # Specifies the Azure subscription where Terraform will create resources.
  subscription_id = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

  # Prevents automatic registration of new Azure resource providers.
  resource_provider_registrations = "none"
}

# Create a Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# Create an Azure SQL Server
resource "azurerm_mssql_server" "sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = azurerm_resource_group.rg.location
  version                      = "12.0"
  administrator_login          = var.admin_username
  administrator_login_password = var.admin_password
}

# Create an Azure SQL Database
resource "azurerm_mssql_database" "sql_database" {
  name        = var.sql_database_name
  server_id   = azurerm_mssql_server.sql_server.id
  sku_name    = "Basic"
  max_size_gb = 2
}

# Configure SQL Server Firewall Rules (allow your local IP)
resource "azurerm_mssql_firewall_rule" "allow_local_ip" {
  name             = "allow-local-ip"
  server_id        = azurerm_mssql_server.sql_server.id
  start_ip_address = var.my_ip_address
  end_ip_address   = var.my_ip_address
}
