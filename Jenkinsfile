pipeline {
  agent { dockerfile true }
  tools {
    maven 'Maven-3.8.5'
    jdk 'Java-11'
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
