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
                sh 'docker-compose build'
                sh 'docker-compose up -d'
            }
        }
    }
}

