# Define variables to customize resource creation
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "rg-terraform-demo"
}

variable "location" {
  description = "The location of the resource group"
  type        = string
  default     = "East US"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
  default     = "gkstoragedemotf"
}
