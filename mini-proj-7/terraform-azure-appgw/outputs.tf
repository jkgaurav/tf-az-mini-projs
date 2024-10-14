# Output the public IP of the Application Gateway
output "appgw_public_ip" {
  value       = azurerm_public_ip.appgw_public_ip.ip_address
  description = "The public IP of the Application Gateway"
}

# Output the backend VM's private IP
output "backend_vm_private_ip" {
  value       = azurerm_network_interface.nic.private_ip_address
  description = "The private IP of the backend VM"
}
