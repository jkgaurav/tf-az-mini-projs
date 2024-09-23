variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "rg-terraform-webapp-demo"
}

variable "location" {
  description = "The Azure region for your resources"
  type        = string
  default     = "East US"
}

variable "app_service_plan_name" {
  description = "The name of the App Service Plan"
  type        = string
  default     = "app-service-plan-demo"
}

variable "web_app_name" {
  description = "The name of the Web App"
  type        = string
  default     = "gktest-webapp-demo"
}
