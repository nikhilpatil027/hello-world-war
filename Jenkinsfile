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
             sh 'cp /home/ubuntu/workspace/pipeline_job2/target/hello-world-war-1.0.0.war /var/lib/tomcat10/webapps/'
               }
          }
    }
}
