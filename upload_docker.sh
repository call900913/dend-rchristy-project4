#!/usr/bin/env bash

dockerpath=call900913/api

echo "Docker ID and Image: $dockerpath"

# Authenticate
docker login --username=call900913 --password='e,wqj}4CR\5viM{{_/L('

# Tag
docker tag bb9de27ee348 call900913/api:v1

# Push the image to Docker Hub
docker push call900913/api:v1
