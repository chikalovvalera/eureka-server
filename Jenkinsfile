pipeline {
  agent {
    dockerfile true
  }
  tools {
    maven 'Maven 3.8.5'
    jdk 'jdk11'
  }
  stages {
    stage('build eureka server') {
      steps {
       git 'https://github.com/chikalovvalera/eureka-server.git'
       echo 'mvn --version' 
       echo 'mvn clean install'
      }
    }
  }
}
