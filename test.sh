#!/bin/bash
echo "Hi, Testing Github Jenkins integration."

echo "Running test script..."
echo "Hello from Jenkins!"
echo "yet another test"

# Use Minikube's Docker daemon
eval $(minikube docker-env)

# Build the Docker image
docker build -t vmisra1989/myapp_test:latest .
