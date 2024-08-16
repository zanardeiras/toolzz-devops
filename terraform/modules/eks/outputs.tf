# ./modules/eks/outputs.tf
output "cluster_name" {
  description = "Nome do Cluster EKS"
  value       = module.eks.cluster_name # Correção aqui
}