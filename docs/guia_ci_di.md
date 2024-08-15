# Guia de CI/CD

## Visão Geral

Este guia descreve como o pipeline de CI/CD foi configurado usando GitHub Actions.

## Estrutura do Pipeline

- **Checkout do Código**: Clona o repositório.
- **Configuração do Terraform**: Instala o Terraform.
- **Validação e Plano**: Valida e cria um plano de execução.
- **Aplicação**: Aplica as mudanças na infraestrutura.

## Configuração de Segredos

- **AWS_ACCESS_KEY_ID**: Chave de acesso da AWS.
- **AWS_SECRET_ACCESS_KEY**: Chave secreta da AWS.

## Como Executar

1. Faça um push para a branch `main` para acionar o pipeline.
2. Verifique os logs no GitHub Actions para o status do pipeline.


----------------------------------------------------------------------------

Explicação dos Passos
Checkout do Código: Usa a ação actions/checkout para clonar o repositório no ambiente de execução.

Configuração do Terraform: Usa a ação hashicorp/setup-terraform para instalar a versão especificada do Terraform.

Inicialização do Terraform: Executa terraform init para inicializar o diretório de trabalho com os plugins necessários.

Validação do Terraform: Executa terraform validate para garantir que a configuração está correta.

Plano do Terraform: Executa terraform plan para criar um plano de execução, mostrando o que será alterado.

Aplicação do Terraform: Executa terraform apply para aplicar as mudanças na infraestrutura. Isso só ocorre na branch main.

Configuração de Segredos
Para que o pipeline funcione, você precisa configurar os segredos AWS_ACCESS_KEY_ID e AWS_SECRET_ACCESS_KEY no repositório do GitHub. Isso é feito em Settings > Secrets do repositório.