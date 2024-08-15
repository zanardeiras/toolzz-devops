variable "subnet_ids" {
  description = "Lista dos IDS da Subnet para o EKS cluster"
  type        = list(string)
}

variable "vpc_id" {
  description = "ID da VPC"
}