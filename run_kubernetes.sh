#!/usr/bin/env bash

# dockerpath=call900913/api

# Run the Docker Hub Container with Kubernetes
kubectl run klm --image=docker.io/call900913/api:v1 --port=80

# List the Pods
echo 'Pods list:'
kubectl get pods

# Forward the container port to a host
# (`grep -Eo '^[^ ]+'` thanks to Gilles Quenot - https://stackoverflow.com/users/465183/gilles-quenot)
podname=$(kubectl get pods | grep -Eo '^[^ ]+' | grep klm)
kubectl port-forward $podname 8000:80
