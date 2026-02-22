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

### Aula 03 - Múltiplos Pods e labels

Nesta aula aplicamos um manifesto que criou dois Pods com labels de versão. Comandos executados e saídas observadas durante a prática:

- Aplicar o manifesto:
	- `kubectl apply -f Aula-03/pod.yaml`
	- Saída observada:
		- `pod/meupod1 created`
		- `pod/meupod2 created`

- Ver pods com label `version=blue`:
	- `kubectl get pod -l version=blue`
	- Saída observada:
		- NAME      READY   STATUS    RESTARTS   AGE
			meupod1   1/1     Running   0          69s

- Ver pods com label `version=green`:
	- `kubectl get pod -l version=green`
	- Saída observada:
		- NAME      READY   STATUS    RESTARTS   AGE
			meupod2   1/1     Running   0          78s

Arquivo usado nesta aula:
- `Aula-03/pod.yaml`

Observação:
- Para deletar os pods criados: `kubectl delete pod meupod1 meupod2` ou `kubectl delete -f Aula-03/pod.yaml`

Próximos passos sugeridos para esta aula:
- Transformar os Pods em um `Deployment` para garantir replicação e gestão automática.
- Criar um `Service` para expor os Pods.

Exemplo de deleção aplicado durante a prática:

```
kubectl delete -f pod.yaml 
pod "meupod1" deleted from default namespace
pod "meupod2" deleted from default namespace
```
