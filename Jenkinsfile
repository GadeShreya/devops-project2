pipeline {
    agent any
    stages {
        stage('Build and Deploy') {
            steps {
                bat 'docker-compose up -d'
            }
        }
    }
}

