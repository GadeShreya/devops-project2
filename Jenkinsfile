pipeline {
    agent any
    stages {
        stage('Build and Deploy') {
            steps {
                script {
                    def dockerTool = tool name: 'Docker', type: 'ToolType'
                    env.PATH = "${dockerTool}:${env.PATH}"

                    // Now you can use docker commands in this stage
                    bat 'docker-compose build'
                }
            }
        }
    }
}

