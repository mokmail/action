pipeline {
    agent {
        docker {
            image 'python:latest'
        }
    }
    
    stages {
        stage('Build') {
            steps {
                sh 'echo hello '
            }
        }
        stage('docker') {
            steps {
                sh 'echo DOCKER '

            }
        }
    }
}
