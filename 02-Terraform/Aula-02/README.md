# Aula 02 - Terraform (AWS EC2)

Este exemplo cria uma instância EC2 na AWS usando Terraform, buscando automaticamente a AMI mais recente do Amazon Linux 2023 e expondo a ID e o IP público como outputs.

## O que existe neste diretório

- `aula02.tf`: configuração principal do Terraform
- `terraform.tfstate` e `terraform.tfstate.backup`: estado local do Terraform (gerados após `apply`)

## O que o código faz

1. Define o provider AWS e sua versão mínima (`>= 4.0`).
2. Configura a região `us-east-1`.
3. Usa um data source para encontrar a AMI mais recente do Amazon Linux 2023 (`al2023-ami-*-x86_64`) do owner oficial `amazon`.
4. Cria uma instância EC2 (`t3.micro`) com tag `Name = ec2-terraform`.
5. Exporta dois outputs: o `instance_id` e o `public_ip`.

## Requisitos

- Terraform instalado (>= 1.x)
- Credenciais AWS configuradas no ambiente (por exemplo via `aws configure`, variáveis de ambiente, ou perfil padrão)

## Como usar

```bash
terraform init
terraform plan
terraform apply
```

Ao final do `apply`, o Terraform exibira:

- `instance_id`: ID da instância criada
- `public_ip`: IP público para acesso

## Limpeza

Para remover os recursos criados:

```bash
terraform destroy
```

## Observações

- A região está fixa em `us-east-1`. Ajuste se necessário.
- `t3.micro` pode ter custos dependendo da sua conta/uso.
