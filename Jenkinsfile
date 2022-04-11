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
