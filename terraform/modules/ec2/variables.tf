variable "instance_type" {
  description = "Tipo da Instancia EC2 ou descriçao"
}

variable "subnet_id" {
  description = "ID da subnet que a instancia será gerada"
}

variable "vpc_id" {
  description = "ID da VPC onde a instância EC2 será criada"
  type        = string
}