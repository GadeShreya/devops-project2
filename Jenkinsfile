pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from the repository
                checkout scm
            }
        }
        
        stage('Build and Deploy') {
            steps {
                // Build and deploy using Docker Compose
                bat 'docker-compose build'
                bat 'docker-compose up -d'
            }
        }
    }
}

