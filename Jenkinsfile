pipeline {
  agent { dockerfile true }
  tools {
    maven 'Maven'
    jdk 'Java'
  }
  stages {
    stage('build eureka server') {
      steps {
       sh 'echo step 1'
       git 'https://github.com/chikalovvalera/eureka-server.git'
       sh 'echo step 2'
       sh 'mvn --version' 
       sh 'mvn clean install'
       sh 'echo step 3'
      }
    }
  }
}
