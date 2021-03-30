# ElixirK8sLambda

The grand idea of us was to create a Kubernetes controller to dispacth and scheduler Elixir Jobs. With the limited time and K8S knowledge we had, we manage to create a controller than when you add resource, it will run the Elixir code that is given in the YAML/JSON file.

## Tools
- Minikube
- Kubectl
- Elixir
- Docker or VirtualBox (or other but we haven't tested on them XD)

## Build Image
First, run these command to build the Docker Image
```
eval $(minikube docker-env)

export NOTSURES_IMAGE=elixir-lambda
docker build -t ${NOTSURES_IMAGE} .
```

Apply the `manifest.yaml` file
```
kubectl apply -f ./manifest.yaml
```

Clean up old deployments if any, example:
```
kubectl delete elixir-node elixir-kubernetes
kubectl delete job testing
kubectl delete po <pod-name>
```

Apply elixir-node.json 
```
kubectl apply -f ./elixir-node.json
```

Check if the job succeeded:
```
kubectl get po
```

You will see something like:
```
NAME                                 READY   STATUS        RESTARTS   AGE
elixir-kubernetes-7b695f5b9d-m7t2q   1/1     Running       0          26s
testing-drfqd                        0/1     Completed     0          3s
```

You can check the job resuly by calling 
```
kubectl logs -f testing-drfqd  
```