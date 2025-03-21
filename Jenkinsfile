pipeline {
    agent any
    
    environment {
        // Define environment variables
        DOCKER_HUB_REPO = "shubha16/my_tomcat" 
        DOCKER_HUB_CREDENTIALS = "docker-hub-credentials" 
        IMAGE_TAG = "latest" 
        WAR_FILE = "target/helloworld.war" 
    }
    
    stages {
        stage('Checkout') {
            steps {
              
                git 'https://github.com/shubhalokesh/hello-world-war.git' 
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                   
                    sh """
                    docker build -t ${DOCKER_HUB_REPO}:${IMAGE_TAG} .
                    """
                }
            }
        }
        
        stage('Login to Docker Hub') {
            steps {
                script {
               
                    docker.withRegistry('', DOCKER_HUB_CREDENTIALS) {
                      
                    }
                }
            }
        }
        
        stage('Push Docker Image to Docker Hub') {
            steps {
                script {
                   
                    docker.withRegistry('', DOCKER_HUB_CREDENTIALS) {
                        sh """
                        docker push ${DOCKER_HUB_REPO}:${IMAGE_TAG}
                        """
                    }
                }
            }
        }
        
        stage('Deploy Docker Container') {
            steps {
                script {
                
                    sh """
                    docker run -d -p 8081:8080 ${DOCKER_HUB_REPO}:${IMAGE_TAG}
                    """
                }
            }
        }
    }

    post {
        success {
            echo "Pipeline completed successfully!"
        }
        failure {
            echo "Pipeline failed!"
        }
    }
}
