variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "rg-terraform-aks-demo"
}

variable "location" {
  description = "The Azure region for your resources"
  type        = string
  default     = "East US"
}

variable "vnet_name" {
  description = "The name of the Virtual Network"
  type        = string
  default     = "aks-vnet-demo"
}

variable "vnet_address_space" {
  description = "The address space for the Virtual Network"
  type        = string
  default     = "10.1.0.0/16"
}

variable "subnet_name" {
  description = "The name of the subnet for the AKS cluster"
  type        = string
  default     = "aks-subnet"
}

variable "subnet_address_prefix" {
  description = "The address prefix for the subnet"
  type        = string
  default     = "10.1.1.0/24"
}

variable "aks_cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
  default     = "aks-cluster-demo"
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
  type        = string
  default     = "aksdemo"
}
