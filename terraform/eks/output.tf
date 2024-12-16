output "cluster_id" {
  description = "ID of the EKS cluster"
  value       = module.eks.cluster_id
}

output "cluster_endpoint" {
  description = "Endpoint of the EKS cluster"
  value       = module.eks.cluster_endpoint
}

output "kubeconfig" {
  description = "Kubeconfig for the cluster"
  value       = module.eks.kubeconfig
}
