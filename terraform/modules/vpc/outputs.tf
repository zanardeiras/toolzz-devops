output "vpc_id" {
  description = "ID da VPC"
  value       = aws_vpc.this.id
}

output "public_subnets" {
  description = "IDs Para subnet publica"
  value       = aws_subnet.public[*].id
}

output "private_subnets" {
  description = "IDs para a subnet Privada"
  value       = aws_subnet.private[*].id
}