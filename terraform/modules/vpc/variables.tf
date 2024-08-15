variable "vpc_cidr" {
  description = "CIDR block VPC"
}

variable "public_subnets" {
  description = "Lista dos CIDR publicos"
  type        = list(string)
}

variable "private_subnets" {
  description = "Lista dos Private CIDRS"
  type        = list(string)
}