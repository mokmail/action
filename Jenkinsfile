pipeline {
    agent any
    environment {
        IMAGE_NAME = 'flask_image'
        CONTAINER_NAME = 'flask_container'
        PORT = '5006' 
    }
     
    stages {
        stage('Test'){
            steps{
                sh "echo hello"
            }
        }

        stage('Build image') {
            steps {
                sh "docker build -t ${IMAGE_NAME} . "
            }
        }
        stage('stop old container'){
            steps{
                sh " docker rm -f ${CONTAINER_NAME} || true "
            }
        }
        stage('Run container'){
            steps{
                sh " docker run -p ${PORT}:${PORT} -d --name ${CONTAINER_NAME} ${IMAGE_NAME} "
            }
        }
    
    }
}
