output "cluster_name" {
 description = "Name of the EKS cluster"
 value       = module.eks.cluster_name
}
output "cluster_endpoint" {
 description = "EKS cluster endpoint"
 value       = module.eks.cluster_endpoint
}
output "cluster_oidc_issuer" {
 description = "OIDC issuer URL for the EKS cluster"
 value       = module.eks.oidc_provider
}
output "node_group_names" {
 description = "List of EKS node group names"
 value       = module.eks.node_groups
}