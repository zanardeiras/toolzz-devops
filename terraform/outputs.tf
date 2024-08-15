output "vpc_id" {
  description = "O ID para a VPC"
  value       = module.vpc.vpc_id
}

output "ec2_instance_id" {
  description = "ID da Intancia EC2"
  value       = module.ec2.instance_id
}

output "rds_endpoint" {
  description = "O endpoint do RDS"
  value       = module.rds.endpoint
}

output "eks_cluster_name" {
  description = "O nome do Cluster EKS"
  value       = module.eks.cluster_name
}