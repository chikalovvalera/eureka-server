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
        script {
          sh 'mvn install:install'
        }
      }
    }
  }
}
