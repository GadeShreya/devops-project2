pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    docker.build('my-django-app')
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    docker.withRegistry('', 'docker-hub-credentials') {
                        docker.image('my-django-app').push('latest')
                    }
                }
            }
        }
    }
}
