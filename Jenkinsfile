  pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker-compose build'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker-compose up -d'
            }
        }
        stage('Test') {
            steps {
                // You can add tests here, e.g., using Selenium or other testing frameworks
            }
        }
    }

    post {
        always {
            sh 'docker-compose down'
        }
    }
}
