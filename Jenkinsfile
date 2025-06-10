pipeline {
    agent any

    environment {
        IMAGE_NAME = "vmisra1989/myapp_test"
        IMAGE_TAG = "latest"
        KUBECONFIG = '/Users/vinay/.kube/config'
    }

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/vmisra1989/devops-testproject.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t vmisra1989/myapp_test:latest .'
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker-hub-creds', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh """
                        echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
                        docker tag $IMAGE_NAME:$IMAGE_TAG $IMAGE_NAME:$IMAGE_TAG
                        docker push $IMAGE_NAME:$IMAGE_TAG
                    """
                }
            }
        }

        stage('Deploy to Minikube') {
            
            steps {
                
                sh 'kubectl config current-context'
                sh 'kubectl cluster-info'
                sh 'kubectl apply -f k8s/deployment.yaml'


                }
            }
        }
    }
}

