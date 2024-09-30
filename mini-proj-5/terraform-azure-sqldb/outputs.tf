# Output the connection string for the SQL Database
output "sql_connection_string" {
  value       = azurerm_mssql_server.sql_server.fully_qualified_domain_name
  description = "The connection string for the SQL Database"
}

