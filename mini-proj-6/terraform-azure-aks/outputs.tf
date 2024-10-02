# Output the AKS cluster's control plane URL
output "aks_cluster_url" {
  value       = azurerm_kubernetes_cluster.aks.fqdn
  description = "The URL of the Kubernetes control plane"
}

# Output the AKS cluster credentials for kubectl
output "kube_config" {
  value       = azurerm_kubernetes_cluster.aks.kube_admin_config_raw
  description = "The kubeconfig to connect to the AKS cluster"
  sensitive   = true
}

