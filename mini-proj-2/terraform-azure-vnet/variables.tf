# Define variables for resource customization
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "rg-terraform-network-demo"
}

variable "location" {
  description = "The location of the resource group"
  type        = string
  default     = "East US"
}

variable "vnet_name" {
  description = "The name of the Virtual Network"
  type        = string
  default     = "vnet-demo"
}

variable "vnet_address_space" {
  description = "The address space of the Virtual Network (CIDR notation)"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
  default     = "subnet-demo"
}

variable "subnet_address_prefix" {
  description = "The address prefix for the subnet (CIDR notation)"
  type        = string
  default     = "10.0.1.0/24"
}
