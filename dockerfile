pipeline {

    agent any
    
    environment {
        IMAGE_NAME = 'vmisra1989/jenkins-docker-test'
        DOCKER_CREDENTIALS_ID = 'docker-hub-creds'
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/vmisra1989/devops-testproject.git'
            }
        }

        stage('Build Docker Image') {
        steps {
            sh 'docker build -t $IMAGE_NAME .'
                }
        }

        stage('Login to Docker Hub') {
            steps {
                withCredentials([usernamePassword(credentialsId: DOCKER_CREDENTIALS_ID, usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh 'echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin'
                }
            }
    }

        stage('Push to Docker Hub') {
            steps {
                sh 'docker push $IMAGE_NAME'
                }
            }
    }
}