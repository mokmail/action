pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh 'echo hello '
            }
        }
        stage('docker') {
            steps {
                sh 'docker -v'

            }
        }
    }
}
