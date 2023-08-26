pipeline {
    agent any
    stages {
        stage('Build and Deploy') {
            steps {
                script {
                    def dockerTool = tool name: 'Docker', type: 'hudson.plugins.docker.tools.DockerTool'
                    env.PATH = "${dockerTool}:${env.PATH}"

                    // Now you can use docker commands in this stage
                    bat 'docker-compose build'
                }
            }
        }
    }
}

