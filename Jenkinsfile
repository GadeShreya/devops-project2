pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t my-django-app .'
            }
        }

        stage('Test') {
            steps {
                sh 'docker-compose run web python manage.py test'
            }
        }

        stage('Deploy') {
            steps {
                sh 'docker-compose up -d'
            }
        }
    }
}

