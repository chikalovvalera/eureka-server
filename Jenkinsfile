pipeline {
  agent { dockerfile true }
  tools {
    maven 'Maven'
    jdk 'Java'
  }
  stages {
    stage ('Initialize') {
      steps {
        sh '''
          echo "PATH = ${PATH}"
          echo "M2_HOME = ${M2_HOME}"
         '''
      }
    }
    stage('Build') {
      steps {
        dir("/home/jenkins_home/workspace/eureka-server-jenkins-docker2") {
          sh 'mvn clean install'
        }
      }
    }
  }
}
