# Aula 03 — Provisionar um Droplet na DigitalOcean com Terraform

Este exemplo cria um Droplet na DigitalOcean e provisiona o Nginx via `cloud-init` para servir uma página estática com uma mensagem personalizada.

Pré-requisitos

- Ter uma conta na DigitalOcean e um token de API válido.
- Ter o Terraform instalado (recomendado >= 0.13).
- (Opcional) Chave SSH cadastrada na DigitalOcean para acesso sem senha.

Como configurar

1. Exporte sua variável de ambiente com o token:

```bash
export DIGITALOCEAN_TOKEN="seu_token_aqui"
```

2. Entre no diretório do exemplo:

```bash
cd /home/dario/Documentos/Cursos/Devops/02-Terraform/Aula-03
```

3. Inicialize o Terraform:

```bash
terraform init
```

4. (Opcional) Visualizar plano alterando valores de variáveis:

```bash
terraform plan -var='region=nyc1' -var='size=s-1vcpu-1gb' -var='message="Olá do Droplet!"'
```

5. Aplicar (criando o droplet):

```bash
terraform apply -var='ssh_keys=["seu_fingerprint_ssh"]' -auto-approve
```

6. Após criação, o output `ipv4_address` mostrará o IP público. Acesse via navegador ou `curl`:

```bash
curl http://<ipv4_address>
```

Destruir os recursos

```bash
terraform destroy -auto-approve
```

Notas

- O provider usa a variável de ambiente `DIGITALOCEAN_TOKEN` para autenticação. Alternativamente, é possível fornecer o token via arquivo `terraform.tfvars` (não versionar esse arquivo).
- Se quiser usar chaves SSH, forneça fingerprints ou IDs no parâmetro `ssh_keys`.
- O `cloud_init.tpl` instala o `nginx` e escreve o arquivo `index.html` com a mensagem definida na variável `message`.

Referências

- Provider DigitalOcean: https://registry.terraform.io/providers/digitalocean/digitalocean/latest
