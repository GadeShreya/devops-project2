pipeline {
    agent any

    environment {
        DOCKER_HUB_CREDENTIALS = 'Docker_Hub'
        IMAGE_NAME = 'project_2'
        IMAGE_TAG = '48'
    }

    stages {
        stage('Checkout SCM') {
            steps {
                checkout scm
            }
        }

        stage('Build and Deploy') {
            steps {
                script {
                    def dockerImage = docker.build("${IMAGE_NAME}:${IMAGE_TAG}", '.')

                    // Tag the image
                    dockerImage.tag "${IMAGE_NAME}:${IMAGE_TAG}", "${IMAGE_NAME}:${IMAGE_TAG}"

                    // Authenticate and push the image to Docker Hub
                    withDockerRegistry(credentialsId: "${DOCKER_HUB_CREDENTIALS}", url: 'https://index.docker.io/v1/') {
                        dockerImage.push()
                    }
                }
            }
        }
    }

    post {
        always {
            // Clean up any Docker resources if needed
            cleanWs()
        }
    }
}

