# Aula 02 — Nginx com Docker Compose

Este diretório contém um exemplo simples de uso do `docker compose` para rodar um servidor Nginx que serve uma página estática com uma mensagem.

Estrutura:

- `docker-compose.yml` — define o serviço `web` usando a imagem `nginx:stable-alpine` e monta a pasta `./html` como conteúdo estático.
- `html/index.html` — página HTML simples exibida pelo Nginx.

Objetivo:

Mostrar como subir um container Nginx via Docker Compose para servir uma página estática localmente (porta `8080`).

Como usar

1. Abra o terminal na pasta do exemplo:

```bash
cd /home/dario/Documentos/Cursos/Devops/01-Docker/Aula-02
```

2. Subir os serviços (modo destacado):

```bash
# Com o plugin moderno (Docker Compose v2 integrado):
docker compose up -d --build

# Ou, se usar a versão legada do compose:
docker-compose up -d --build
```

3. Verificar que está rodando:

```bash
docker ps
curl http://localhost:8080
# Abra no navegador: http://localhost:8080
```

Parar e remover os containers criados pelo compose

```bash
docker compose down
# ou
docker-compose down
```

Logs e acesso ao container

- Ver logs do serviço:

```bash
docker compose logs -f web
```

- Acessar um shell no container (se necessário):

```bash
docker exec -it simple-nginx /bin/sh
```

Notas importantes

- A pasta `html` é montada com permissão somente leitura dentro do container (opção `:ro` no `docker-compose.yml`). Edite `html/index.html` localmente para alterar a mensagem exibida.
- Se a porta `8080` já estiver em uso, altere o mapeamento em `docker-compose.yml` (por exemplo `8081:80`).
- Verifique se o daemon do Docker está ativo caso surjam erros: `systemctl status docker`.

Sugestões de exercícios

- Modificar a mensagem em `html/index.html` e recarregar o serviço (`docker compose up -d --build`).
- Adicionar um segundo serviço (ex.: um container com uma API simples) e configurar uma rede entre os serviços.

Referências

- Documentação do Docker: https://docs.docker.com/
