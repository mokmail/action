pipeline {
    agent {
        dockerfile {
            filename 'dockerfile'
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
