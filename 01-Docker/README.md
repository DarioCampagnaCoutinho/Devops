# Curso — 01 - Docker

Resumo
-------
Esta pasta contém os exemplos das aulas introdutórias de Docker usados no curso.

Estrutura
---------
- `Aula-01/` — comandos básicos e anotações em `aula01.txt` (comandos Docker e Docker Compose).
- `Aula-02/` — exemplo prático com `docker-compose.yml` que sobe um container Nginx e serve uma página estática:
  - `docker-compose.yml` — define o serviço `web` (imagem `nginx:stable-alpine`) mapeando a porta `8080` e montando `./html`.
  - `html/index.html` — página servida pelo Nginx.

Como usar o exemplo (Aula-02)
-----------------------------
1. Abra o terminal na pasta do exemplo:

   ```powershell
   cd c:\Users\dario\Documentos\Cursos\Devops\01-Docker\Aula-02
   ```

2. Subir o serviço:

   ```powershell
   docker compose up -d --build
   # ou, se usar a versão legada
   docker-compose up -d --build
   ```

3. Verificar funcionamento:

   ```powershell
   docker ps
   curl http://localhost:8080
   ```

4. Parar e remover os recursos:

   ```powershell
   docker compose down
   # ou
   docker-compose down
   ```

Notas
-----
- A pasta `html` é montada como somente leitura dentro do container (`:ro`). Edite `html/index.html` localmente para alterar o conteúdo exibido.
- Se a porta `8080` estiver em uso, altere o mapeamento em `docker-compose.yml`.
- Certifique-se de que o daemon do Docker está ativo antes de executar os comandos.

Sugestões de exercícios
------------------------
- Alterar a mensagem em `html/index.html` e recarregar o serviço.
- Adicionar um segundo serviço no `docker-compose.yml` (ex.: uma API simples) e testar comunicação entre contêineres.

Referências
----------
- Documentação do Docker: https://docs.docker.com/

Arquivos relevantes
-------------------
- [Aula-01/aula01.txt](Aula-01/aula01.txt)
- [Aula-02/docker-compose.yml](Aula-02/docker-compose.yml)
- [Aula-02/README.md](Aula-02/README.md)
