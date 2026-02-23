# Curso — 02 - Terraform

Resumo
-------
Esta pasta contém os exemplos práticos de uso do Terraform apresentados nas aulas do curso. Os exemplos mostram integrações com AWS (S3 e EC2) e DigitalOcean (Droplet provisionado com cloud-init).

Estrutura
---------
- `Aula-01/` — exemplo simples que configura o provider AWS e cria um bucket S3 (`aula01.tf`).
- `Aula-02/` — exemplo que cria uma instância EC2, utiliza um data source para obter a AMI do Amazon Linux e exporta `instance_id` e `public_ip` (`aula02.tf`).
- `Aula-03/` — exemplo que provisiona um Droplet na DigitalOcean usando `cloud_init.tpl` para instalar e configurar o Nginx; includes `main.tf`, `outputs.tf` e `cloud_init.tpl`.

Instruções gerais
-----------------
Pre-requisitos comuns:

- Ter o `terraform` instalado (recomendado versão >= 0.13; alguns exemplos usam >= 1.x). 
- Ter credenciais/configuração do provider correspondente (AWS ou DigitalOcean) na máquina ou via variáveis de ambiente.

Comandos úteis (geral)

```powershell
terraform init
terraform validate
terraform plan
terraform apply
terraform destroy
```

Notas por exemplo
-----------------
- `Aula-01`: cuidado com o nome do bucket S3 — deve ser único globalmente; ajuste `bucket` em `aula01.tf` se necessário.
- `Aula-02`: cria uma instância `t3.micro` em `us-east-1` — verifique custos e a disponibilidade de AMIs na sua conta.
- `Aula-03`: usa o provider `digitalocean`; exporte `DIGITALOCEAN_TOKEN` antes de executar, ou configure via `terraform.tfvars`. O arquivo `cloud_init.tpl` injeta a variável `message` no `index.html` e habilita o `nginx`.

Exemplos de comandos específicos (Aula-03 - DigitalOcean)

```powershell
$env:DIGITALOCEAN_TOKEN = "seu_token_aqui"
cd 02-Terraform\Aula-03
terraform init
terraform plan -var='region=nyc1' -var='size=s-1vcpu-1gb' -var='message="Olá do Droplet!"'
terraform apply -var='ssh_keys=["seu_fingerprint_ssh"]' -auto-approve
```

Boas práticas
-------------
- Nunca versionar tokens, chaves privadas ou arquivos com credenciais (ex.: `terraform.tfvars` com secrets).
- Utilize workspaces ou estados remotos (ex.: S3 + DynamoDB para locking no caso de AWS) em ambientes colaborativos.
- Adapte o provider e versões conforme a necessidade do seu ambiente.

Arquivos relevantes
-------------------
- [Aula-01/aula01.tf](Aula-01/aula01.tf)
- [Aula-01/README.md](Aula-01/README.md)
- [Aula-02/aula02.tf](Aula-02/aula02.tf)
- [Aula-02/README.md](Aula-02/README.md)
- [Aula-03/main.tf](Aula-03/main.tf)
- [Aula-03/cloud_init.tpl](Aula-03/cloud_init.tpl)
- [Aula-03/outputs.tf](Aula-03/outputs.tf)
- [Aula-03/README.md](Aula-03/README.md)
