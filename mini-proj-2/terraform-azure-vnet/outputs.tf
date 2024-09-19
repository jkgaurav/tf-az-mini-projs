# Output the Virtual Network ID
output "vnet_id" {
  value       = azurerm_virtual_network.vnet.id
  description = "The ID of the virtual network"
}

# Output the Subnet ID
output "subnet_id" {
  value       = azurerm_subnet.subnet.id
  description = "The ID of the subnet"
}
