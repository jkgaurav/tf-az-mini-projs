# Output the storage account primary connection string
output "primary_connection_string" {
  value       = azurerm_storage_account.storage.primary_connection_string
  description = "The primary connection string of the storage account"
  sensitive   = true
}

