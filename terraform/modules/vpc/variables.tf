variable "vpc_cidr" {
  description = "CIDR block VPC"
}

variable "public_subnets" {
  description = "List of public subnet CIDRs"
  type        = list(string)
}


variable "private_subnets" {
  description = "Lista dos Private CIDRS"
  type        = list(string)
}