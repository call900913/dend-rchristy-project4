#!/usr/bin/env bash

# dockerpath=call900913/api

# Run the Docker Hub Container with Kubernetes
kubectl run klm --image=docker.io/call900913/api:v1 --port=80

# List the Pods
echo 'Pods list:'
kubectl get pods

# Forward the container port to a host
kubectl proxy --port=8000
