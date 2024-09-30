variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "rg-terraform-sql-demo"
}

variable "location" {
  description = "The Azure region for your resources"
  type        = string
  default     = "Australia East"
}

variable "sql_server_name" {
  description = "The name of the Azure SQL Server"
  type        = string
  default     = "sqlserver-gktest-demo"
}

variable "admin_username" {
  description = "The administrator username for the SQL Server"
  type        = string
  default     = "sqladmin"
}

variable "admin_password" {
  description = "The administrator password for the SQL Server"
  type        = string
  default     = "P@ssword123!"
  sensitive   = true
}

variable "sql_database_name" {
  description = "The name of the SQL Database"
  type        = string
  default     = "sqldatabase-demo"
}

variable "my_ip_address" {
  description = "Your local IP address to be whitelisted by the SQL Server firewall"
  type        = string
  default     = "20.235.129.86" # Replace with your actual IP or automate fetching it.
}

