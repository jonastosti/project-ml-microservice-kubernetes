[![CircleCI](https://circleci.com/gh/jonastosti/project-ml-microservice-kubernetes/tree/master.svg?style=svg)](https://circleci.com/gh/jonastosti/project-ml-microservice-kubernetes/tree/master)

## Project Overview

This project is part of the Cloud DevOps Engineer Nanodegree Program from Udacity. The main goal of this project was to create a docker container for a python app and deploy it using Kubernetes. In order to achieve that, the following steps were taken:

* Creation of a Make file to build and lint our app, as well as to lint a Docker Image;

* Creation of a Docker image for a Pyhton app;
* Constructed a CI pipeline on Circle CI to build and lint our application;

**P.S:** The application code used in this project was provided by Udacity.

## Running

The application can be executed by invoking the following commands:

```bash
# Starts Minikube
minikube start

# Pulls the latest image and deploys it to Kubernetes
./run_kubernetes.sh

# Invokes the app
./make_predictions.sh
```

## Files Description

**MakeFile**: Instructions to fetch the app's dependencies, as well as to lint the the Python code and the Dockerfile

**Dockerfile:** Commands to assemble the docker image.

**app.py:** Application code.

**make_prediction.sh:** File that invokes the application on port 8000 once it's running.

**requirements.txt:** Python dependencies needed to run the app;

**run_docker.sh:** Builds a DockerFile and run it locally.

**run_kubernetes.sh:** Instructions to deploy the app container to Kubernetes.

**upload_docker.sh**: Instructions to upload a docker image to the Docker Hub.

**.circleci/config.yml:** Code used on the Circle CI Pipeline
