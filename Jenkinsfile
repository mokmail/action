pipeline {
    agent any
    environment {
        IMAGE_NAME = 'flask_image'
        CONTAINER_NAME = 'flask_container'
        PORT = 5000
    }
     
    stages {

        stage('Build image') {
            steps {
                sh " docker build -t ${IMAGE_NEMA} . "
            }
        }
        stage('stop old container'){
            steps{
                sh " docker rm -f ${CONTAINER_NAME} || true "
            }
        }
        stage('Run container'){
            steps{
                sh " docker run -p ${PORT}:${PORT} --name ${CONTAINER_NAME} ${IMAGE_NAME} "
            }
        }
    
    }
}
