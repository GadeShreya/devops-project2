pipeline {
    agent any

    stages {
        stage('Checkout SCM') {
            steps {
                // Checkout your repository here
                checkout scm
            }
        }

        stage('Build and Deploy') {
            steps {
                dir('devops-project2') {
                    // Execute Docker build command
                    bat 'docker build -t my-django-app:21 .'
                }
            }
        }

         post {
        always {
            // Clean up resources, e.g., stop and remove Docker containers, clean workspace, etc.
            deleteDir()
            bat 'docker-compose down'
        }
    }
}

