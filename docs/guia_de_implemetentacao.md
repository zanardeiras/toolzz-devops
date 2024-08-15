# Guia de Implementação

## Visão Geral

Este guia descreve como a infraestrutura foi configurada usando Terraform.

## Módulos Terraform

### VPC

- Configura uma VPC com subnets públicas e privadas.
- CIDR: `10.0.0.0/16`

### EC2

- Instância EC2 configurada em uma subnet pública.
- Tipo de instância: `t2.micro`

### RDS

- Banco de dados RDS configurado em subnets privadas.
- Engine: `MySQL`

### EKS

- Cluster EKS configurado em subnets privadas.

## Como Executar

1. Navegue até a pasta `terraform/`.
2. Execute `terraform init` para inicializar o projeto.
3. Execute `terraform apply` para aplicar a configuração.