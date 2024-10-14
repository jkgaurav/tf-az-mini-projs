variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "rg-terraform-appgw-demo"
}

variable "location" {
  description = "The Azure region for your resources"
  type        = string
  default     = "East US"
}

variable "vnet_name" {
  description = "The name of the Virtual Network"
  type        = string
  default     = "appgw-vnet"
}

variable "vnet_address_space" {
  description = "The address space for the Virtual Network"
  type        = string
  default     = "10.2.0.0/16"
}

variable "subnet_name" {
  description = "The name of the subnet for the Application Gateway"
  type        = string
  default     = "appgw-subnet"
}

variable "subnet_address_prefix" {
  description = "The address prefix for the subnet"
  type        = string
  default     = "10.2.1.0/24"
}

variable "admin_username" {
  description = "Admin username for the Virtual Machine"
  type        = string
  default     = "azureuser"
}

variable "admin_password" {
  description = "Admin password for the Virtual Machine"
  type        = string
  default     = "P@ssword123!"
  sensitive   = true
}

variable "nsg_rules" {
  description = "List of NSG rules"
  type = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
  default = [
    {
      name                       = "Allow-SSH-Inbound"
      priority                   = 100
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "22"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    },
    {
      name                       = "Allow-HTTP-Inbound"
      priority                   = 200
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "80"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  ]
}
