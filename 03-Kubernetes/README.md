# Tópico 03 - Kubernetes

Este diretório reúne as atividades práticas iniciais de Kubernetes no curso de DevOps.

## O que foi feito até o momento

### Aula 01 - Introdução com k3d
Foram praticados comandos básicos para gerenciamento de cluster local com k3d:

- Criar cluster padrão.
- Criar cluster com múltiplos workers.
- Expor porta local para o load balancer do cluster.
- Listar clusters criados.
- Parar e iniciar cluster.
- Excluir cluster.
- Validar nós do cluster com kubectl get nodes.

Arquivo de apoio:
- Aula-01/aula01.txt

### Aula 02 - Primeiro recurso no Kubernetes (Pod)
Foi criado um manifesto YAML para subir um Pod simples com container web:

- Recurso: Pod
- Nome: meupod
- Imagem: kubedevio/web-color:blue
- Porta do container: 80/TCP

Arquivo usado:
- Aula-02/pod.yaml

Comandos executados na prática:
- kubectl apply -f pod.yaml
- kubectl get pods

## Correções realizadas durante a prática
Durante a aplicação do manifesto, houve erro de mapeamento de recurso. Foram feitas as correções abaixo no arquivo pod.yaml:

- apiVersion alterado de V1 para v1.
- Chave espec corrigida para spec.

Após o ajuste, o manifesto ficou válido para criação do Pod.

## Próximos passos sugeridos

- Ver detalhes do pod: kubectl describe pod meupod
- Ver logs do container: kubectl logs meupod
- Acessar shell do container: kubectl exec -it meupod -- sh
- Evoluir de Pod isolado para Deployment e Service
