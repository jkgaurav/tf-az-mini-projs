# Output the URL of the Web App
output "web_app_url" {
  value       = azurerm_linux_web_app.web_app.default_hostname
  description = "The URL of the Web App"
}
