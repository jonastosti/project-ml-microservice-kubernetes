#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="jonastosti/udacity-project"

# Step 2:  
# Authenticate & tag
echo "Docker Path:" $dockerpath
docker image tag udacity-project:latest $dockerpath
docker login --username=jonastosti

# Step 3:
# Push image to a docker repository
docker image push $dockerpath
