# Operationalizing a Machine Learning Microservice API
[![CircleCI](https://circleci.com/gh/call900913/dend-rchristy-project4.svg?style=svg)](https://circleci.com/gh/call900913/dend-rchristy-project4)

This project takes the Machine Learning app created by Noah Gift in partnership with Udacity and operationalizes it using Docker and Kubernetes.

The Machine Learning app in question itself is an app that serves out predictions on housing prices through API calls.


## Table of Contents

• [Notes and Prerequisites](#notes-and-prerequisites)

• [Files in the Repository](#files-in-the-repository)

• [Instructions](#instructions)


## Notes and Prerequisites

### 1. Docker
You need to have Docker installed on your machine and running.
Visit the [Docker](https://docs.docker.com/docker-for-mac/install/) website to download Docker.

### 2. Credentials
This project uses my Docker credentials so you can view what I have done.
However, you can reproduce the work with your own Docker repository if you want to do so.
Dockerfile		app.py			make_predictions.sh	run_docker.sh
Makefile		docker_out.txt		model_data		run_kubernetes.sh
README.md		kubernetes_out.txt	requirements.txt	upload_docker.sh


## Files in the Repository

### `Dockerfile`
This file defines the Docker image that the project uses.

### `Makefile`
This file makes setup and linting easier for you.

### `app.py`
This is the application being operationalized. (App supplied by Noah Gift via Udacity)

### `run_docker.sh`
With this script, you will build and run the Docker container.

### `upload_docker.sh`
This file is used to upload the image to the relevant Docker repository.

### `run_kubernetes.sh`
This file runs the Docker container with Kubernetes.

### `.devops\`
This hidden directory is your gateway to the virtual environment.

### `.circleci\`
This hidden directory contains the configuration file for integration with CircleCI.



## Instructions

1. Clone the GitHub Repository either via the green `Clone or Download` button or via the Command Line (Terminal):
```
git clone https://github.com/call900913/dend-rchristy-project4.git

cd dend-rchristy-project4
```

2. Create Activate the virtual environment with these commands:
```
python3 -m venv .devops

source .devops/bin/activate
```

3. Run `make install` on the Terminal.

4. Start Docker build by running the following command:
```
./run_docker.sh
```

5. Open a new Terminal window (Window B), and run the `make_predictions.sh` script:
```
./make_predictions.sh
```
(Feel free to open your browser and visit `http://localhost:8000` if you'd like.)

6. On the Terminal window (Window A) where you have the app running, type `ctrl-C` to terminate the running processes.

7. Before proceeding to the next step, run `minikube start`.

8. Still on Window A, run the Kubernetes script:
```
./run_kubernetes.sh
```

9. Perform Step #5 again here for this step.

10. Run the following commands to close the session:
```
minikube delete

deactivate
```


## Lint Checks
The Dockerfile is checked by `hadolint`, the app.py by `pylint`.
