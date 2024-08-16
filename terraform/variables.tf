variable "aws_region" {
  description = " região da AWS para implantar recursos"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "Bloco CIDR para a VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "Lista de CIDRs de sub-redes públicas"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  description = "Lista de CIDRs de sub-redes privadas"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "ec2_instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "db_username" {
  description = "Database username"
}

variable "db_password" {
  description = "Database password"
  sensitive   = true
}
