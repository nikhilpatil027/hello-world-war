pipeline {
    agent any
    environment {
       jfrog_api_token = credentials('jfrog_api_token')
    }
       stages 
    {
        stage('checkout') {             
            steps {
                sh """
                #!/bin/bash
                sleep 10
                sudo su
                cd /opt/apache-tomcat-10.1.34/webapps
                ls
                 curl -L -u "jfrog_api_token_USR:jfrog_api_token_PWD" -O "http://3.110.105.32:8082/artifactory/hello-world-war-libs-release/com/efsavage/hello-world-war/1.0.15/hello-world-war-1.0.10.war"
                pwd
                cd /opt/apache-tomcat-10.1.34/bin
                ./shutdown.sh
                sleep 3
                pwd
                
                pwd
                cd /opt/apache-tomcat-10.1.34/bin
                ./startup.sh
                sleep 3
                """ 

            }
        }
         
    }
}
