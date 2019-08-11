#!/usr/bin/env bash
# Build, List, and Run steps are to be completed with this script

# Build image and add a descriptive tag
docker build --tag=api .

# List docker images
docker image ls

# Run app
docker run -p 8000:80 api
