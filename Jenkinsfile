pipeline {
  agent {
    dockerfile true
  }
  tools {
    maven 'Maven-3.8.5'
    jdk 'Java-11'
  }
  stages {
    stage('build eureka server') {
      steps {
       git 'https://github.com/chikalovvalera/eureka-server.git'
       sh 'mvn --version' 
       sh 'mvn clean install'
      }
    }
  }
}
