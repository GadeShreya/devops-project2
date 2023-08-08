pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.image('python:3.8').pull()
                    docker.build('my-django-app')
                }
            }
        }

        stage('Deploy with Docker Compose') {
            steps {
                sh 'docker-compose up -d'
            }
        }

        stage('Test Application') {
            steps {
                script {
                    // Run Django tests using manage.py
                    sh 'docker-compose run web python manage.py test'
                }
            }
        }
    }
}

