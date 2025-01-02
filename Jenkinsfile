pipeline {
    agent { label 'dev' }
      stages {
        stage('checkout') {
            sh 'rm -rf hello-world-war'
            sh 'git clone https://github.com/nikhilpatil027/hello-world-war.git'
        }
          stage ('build') {
              sh 'cd hello-world-war'
              sh 'pwd'
              sh 'mvn clean package'
              
          }
            steps {
                echo 'Hello World'
            }
        }
    }
}
