# devops-testproject
CI/CD test pipeline using Github + Jenkins + Docker + Minikube

## Overview
This project demonstrates a CI/CD pipeline using GitHub, Jenkins, Docker, and Minikube. The pipeline is designed to automate the process of building, testing, and deploying applications.

## Prerequisites
- Jenkins, Docker, and Minikube are installed locally on macOS.

## Pipeline Steps
1. **GitHub Integration**: Code is pushed to a GitHub repository.
2. **Jenkins**: Jenkins is configured to pull the latest code from GitHub, build the Docker image, and run tests.
3. **Docker**: Docker is used to containerize the application.
4. **Minikube**: Minikube is used to deploy the application to a local Kubernetes cluster.

## Setup Instructions
1. Install Jenkins, Docker, and Minikube on your macOS.
2. Configure Jenkins to connect to your GitHub repository.
3. Create a Jenkins pipeline to build and test the Docker image.
4. Deploy the Docker image to Minikube.

## Usage
- Push code changes to the GitHub repository.
- Jenkins will automatically build, test, and deploy the application.

## Troubleshooting
- Check Jenkins logs for build and test errors.
- Use `kubectl` commands to manage and troubleshoot the Kubernetes pods.

## Conclusion
This project provides a basic setup for a CI/CD pipeline using GitHub, Jenkins, Docker, and Minikube on macOS.
