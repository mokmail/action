pipeline {
    agent {
        docker {
            image: 'python'
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
