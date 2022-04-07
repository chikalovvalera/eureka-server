pipeline {
  agent {
    dockerfile true
  }
  stages {
    stage('build eureka server') {
      steps {
       git 'https://github.com/chikalovvalera/eureka-server.git'
       echo 'mvn --version' 
       echo 'mvn clean package'
      }
    }
  }
}
