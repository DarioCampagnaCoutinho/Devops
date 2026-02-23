# Curso DevOps — Conteúdo e Exercícios

Visão geral
----------
Este repositório contém materiais e exemplos práticos para um curso introdutório de DevOps. O objetivo é apresentar ferramentas e fluxos comuns usados em infraestrutura como código, containerização e orquestração.

Principais tecnologias abordadas
-------------------------------
- Docker / Docker Compose — empacotamento de aplicações em contêineres.
- Terraform — provisionamento de infraestrutura (AWS, DigitalOcean).
- Kubernetes — conceitos básicos e exemplos de pods/replicasets.

Estrutura do repositório
-------------------------
- `01-Docker/` — exemplos e notas sobre Docker e um exemplo com Nginx via `docker-compose`.
- `02-Terraform/` — exemplos com AWS (S3, EC2) e DigitalOcean (Droplet + cloud-init).
- `03-Kubernetes/` — exemplos de manifestos do Kubernetes (pods, replicaset) e anotações.

Como usar
---------
Cada pasta de aula inclui um README local com instruções específicas. Em geral siga este fluxo:

1. Abra o diretório da aula desejada (ex.: `01-Docker/Aula-02`).
2. Leia o `README.md` local para pré-requisitos e passos.
3. Execute os comandos indicados (ex.: `docker compose up`, `terraform init && terraform apply`).

Pré-requisitos gerais
---------------------
- Ter as ferramentas instaladas conforme o exemplo (Docker, Terraform, kubectl, gh, etc.).
- Credenciais apropriadas configuradas para providers externos (AWS, DigitalOcean), quando necessário.

Boas práticas
-------------
- Nunca comite tokens, chaves privadas ou arquivos com credenciais (`terraform.tfvars` contendo secrets, por exemplo).
- Use estados remotos e bloqueio (lock) para workspaces colaborativos quando for usar Terraform em equipe.
- Teste localmente com recursos de baixo custo (p.ex. instâncias pequenas) antes de criar infra em produção.

Links rápidos para os módulos
----------------------------
- [01-Docker/README.md](01-Docker/README.md)
- [02-Terraform/README.md](02-Terraform/README.md)
- [03-Kubernetes/README.md](03-Kubernetes/README.md)

Próximos passos sugeridos
-------------------------
- Executar os exemplos passo a passo e anotar dúvidas.
- Expandir os exemplos: adicionar um serviço backend no `docker-compose`, criar recursos adicionais com Terraform, ou transformar o exemplo Docker em um Deployment no Kubernetes.

Contato
-------
Para dúvidas sobre os conteúdos, procure o instrutor ou mantenha as issues deste repositório para perguntas e sugestões.
