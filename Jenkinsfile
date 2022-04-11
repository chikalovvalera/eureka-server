pipeline {
  agent any
  stages {
    stage('Build') {
        steps {
            sh "docker build -t eureka-server ."
        }
    }
    stage('Run') {
        steps {
            sh "docker run -d -p 8761:8761 --name eureka-server"
        }
    }
  }
}
