variable "db_username" {
  description = "nomo do usuario Root"
}

variable "db_password" {
  description = "Senha da Database"
  sensitive   = true
}

variable "subnet_ids" {
  description = "Lista dos IDs da subnet da instancia RDS"
  type        = list(string)
}