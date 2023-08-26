pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/GadeShreya/devops-project2.git'
            }
        }

        stage('Build and Deploy') {
            steps {
                bat 'docker-compose build'
                bat 'docker-compose up -d'
            }
        }
    }
}

