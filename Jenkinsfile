pipeline {
    agent { label 'slave2' }
    stages {
        stage('checkout') {
            steps {
                sh 'rm -rf hello-world-war'
                sh 'git clone https://github.com/nikhilpatil027/hello-world-war.git'
            }
        } 
       stage('build') {
            steps {
                sh 'cd hello-world-war'
                sh 'mvn clean package'
            }
        }
      stage('deploy') {
           steps {
             sh 'scp /home/ubuntu/workspace/pipeline_job2/target/hello-world-war-1.0.0.war ubuntu@172.31.38.133:/opt/apache-tomcat-10.1.34/webapps/'
               }
          }
    }
}
