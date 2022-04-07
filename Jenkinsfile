pipeline {
  agent { dockerfile true }
  tools {
    maven 'Maven'
    jdk 'Java'
  }
  stages {
    stage('build eureka server') {
      steps {
       echo 'mvn --version' 
       echo 'mvn clean install'
      }
    }
  }
}
