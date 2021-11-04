#!/usr/bin/env bash

# Step 1:
# This is your Docker ID/path
dockerpath="jonastosti/udacity-project"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run kubernetes-project-udacity --image=$dockerpath


# Step 3:
# Wait for pods to be created
kubectl wait --for=condition=ready pod kubernetes-project-udacity
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward kubernetes-project-udacity 8000:80
