pipeline {
    agent any

    stages {
        stage('Checkout SCM') {
            steps {
                checkout scm
            }
        }

        stage('Build and Deploy') {
            steps {
                // Remove the 'dir' block if your Dockerfile and docker-compose.yml are in the root directory
                dir('devops-project2') {
                    // Build the Docker image
                    bat 'docker build -t my-django-app:21 .'
                }
                
                // Deploy using docker-compose
                bat 'docker-compose up -d'
            }
        }
    }

    post {
        always {
            // Clean up resources, e.g., stop and remove Docker containers, clean workspace, etc.
            script {
                // Adjust the path to docker-compose.yml if needed
                bat 'docker-compose down'
            }
        }
    }
}

