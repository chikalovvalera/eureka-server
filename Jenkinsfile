pipeline {
  agent any
  tools {
    maven 'Maven'
    jdk 'Java'
  }  
  stages {
    stage('Compile') {
        steps {
            sh "mvn package spring-boot:repackage"
        }
    }
    stage('Clean') {
        steps {
            script {
                try {
                  sh '''
                    docker rm $(docker stop $(docker ps -a -q --filter ancestor=eureka-server --format="{{.ID}}"))
                  '''
                } catch (Exception e) {
                  sh '''
                  echo error docker rm stop container...
                  '''                  
                }
            }
        }
    }
    stage('Build') {
        steps {
            sh "docker build -t eureka-server ."
        }
    }
    stage('Run') {
        steps {
            sh "docker run -d -p 8761:8761 eureka-server"
        }
    }
  }
}
