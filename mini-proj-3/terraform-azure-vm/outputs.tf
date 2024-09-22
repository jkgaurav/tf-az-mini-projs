# Output the public IP of the VM
output "vm_public_ip" {
  value       = azurerm_public_ip.public_ip.ip_address
  description = "The public IP of the VM"
}

