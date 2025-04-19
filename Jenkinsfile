pipeline {
    agent any // This allows the pipeline to run on any available Jenkins agent

    environment {
        // Define environment variables to be reused across stages
        IMAGE_NAME = 'flask_image'         // Name of the Docker image to be built
        CONTAINER_NAME = 'flask_container' // Name of the Docker container to be run
        PORT = '5006'                      // Port the container will expose
    }
    parameters {
        string(name: "TAG" , defaultValue: "1.0" , description :"Add a docker image tag" )
    }
     
    stages {
        // Stage 1: Verify Docker is installed and available
        stage('Test') {
            steps {
                sh "docker --version" // Prints Docker version to confirm Docker is installed
            }
        }

        // Stage 2: List currently running Docker containers
        stage('list containers') {
            steps {
                sh 'docker ps' // Shows active containers for debugging or verification
            }
        }

        // Stage 3: Build the Docker image from the Dockerfile in the current directory
        stage('Build image') {
            steps {
                sh "docker build -t ${IMAGE_NAME}:${params.TAG} ."
                // Builds an image with the tag defined by IMAGE_NAME
            }
        }

        // Stage 4: Stop and remove any running container with the same name
        stage('stop old container') {
            steps {
                sh "docker rm -f ${CONTAINER_NAME}:${params.TAG} || true"
                // Force removes the container if it exists; '|| true' prevents failure if it doesn't
            }
        }

        // Stage 5: Run a new container with the specified image and port mapping
        stage('Run container') {
            steps {
                sh "docker run -p ${PORT}:${PORT} -d --name ${CONTAINER_NAME} ${IMAGE_NAME}:${params.TAG}"
                // Starts the container in detached mode, binds ports, and gives it a name
            }
        }
    }
}
