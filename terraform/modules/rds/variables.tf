variable "db_username" {
  description = "nome do usuario Root"
}

variable "db_password" {
  description = "Senha da Database"
  sensitive   = true
}

variable "vpc_id" {
  description = "ID da VPC onde o cluster EKS será implantado."
  type        = string
}

variable "subnet_ids" {
  description = "IDs das Subnets para o RDS"
  type        = list(string)
}