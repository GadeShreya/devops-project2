pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Build and Deploy') {
            steps {
                script {
                    def dockerImage = docker.build("my-django-app:${env.BUILD_NUMBER}")
                    dockerImage.push()
                    bat "docker-compose up -d"
                }
            }
        }
    }
    
    post {
        always {
            cleanWs()
            bat "docker-compose down"
        }
    }
}

