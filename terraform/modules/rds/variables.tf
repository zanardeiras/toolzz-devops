variable "db_username" {
  description = "nome do usuario Root"
}

variable "db_password" {
  description = "Senha da Database"
  sensitive   = true
}

variable "vpc_id" {
  description = "The ID of the VPC where the EKS cluster will be deployed."
  type        = string
}

variable "subnet_ids" {
  description = "IDs das Subnets para o RDS"
  type        = list(string)
}