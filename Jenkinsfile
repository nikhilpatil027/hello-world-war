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
             sh 'scp /home/ubuntu/workspace/pipeline_job2/target/hello-world-war-1.0.0.war root@172.31.38.133/opt/tomcat/webapps/'
           }
            post {
    success {
        mail to: "nikhilrpatil027@gmail.com",
             subject: "Jenkins Job Success",
             body: "The Jenkins job completed successfully."
    }
    failure {
        mail to: "nikhilrpatil027@gmail.com",
             subject: "Jenkins Job Failed",
             body: "The Jenkins job failed. Check the logs for details."
    }
}
      }
    
               }
          
}
