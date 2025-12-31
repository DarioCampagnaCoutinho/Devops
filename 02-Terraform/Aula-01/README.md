# Aula 01 - Terraform

## Objetivo
Esta aula demonstra o basico do Terraform: configurar o provider AWS e criar um bucket S3.

## O que esta no codigo
- `aula01.tf`: define o provider AWS (regiao `eu-central-1`) e cria um bucket S3 com tags.
- `terraform.tfstate` e `terraform.tfstate.backup`: arquivos de estado gerados pelo Terraform.

## Pre-requisitos
- Terraform instalado (versao >= 0.12).
- Credenciais AWS configuradas (por exemplo, via `AWS_ACCESS_KEY_ID` e `AWS_SECRET_ACCESS_KEY`).

## Como executar
1. Inicialize o Terraform:
   ```bash
   terraform init
   ```
2. Valide a configuracao:
   ```bash
   terraform validate
   ```
3. Veja o plano:
   ```bash
   terraform plan
   ```
4. Aplique a infraestrutura:
   ```bash
   terraform apply
   ```

## Observacoes
- O nome do bucket S3 deve ser unico globalmente. Se necessario, altere `bucket` em `aula01.tf`.
- Para remover o recurso criado:
  ```bash
  terraform destroy
  ```
