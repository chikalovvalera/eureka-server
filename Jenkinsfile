pipeline {
  agent any
  tools {
    maven 'Maven'
    jdk 'Java'
  }
  parameters {
    string (name:'containerName', defaultValue: "eureka-server", description: '')
    string (name:'containerTag', defaultValue: "latest", description: '')
  }
  stages {
    stage('Build') {
        steps {
            sh "docker build -t eureka-server-v2 ."
        }
    }
    stage('Run') {
        steps {
            sh "docker run -it --rm -p 8761:8761 --name eureka-server-v2"
        }
    }
  }
}
