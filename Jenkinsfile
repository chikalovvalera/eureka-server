pipeline {
  agent { dockerfile true }
  tools {
    maven 'Maven'
    jdk 'Java'
  }
  parameters {
    string (name:'containerName', defaultValue: "eureka-server", description: '')
    string (name:'containerTag', defaultValue: "latest", description: '')
  }
  stages {
    stage('Deploy') {
        steps {
            sh "docker build -t ${params.containerName}:${params.containerTag}  -t ${params.containerName} --no-cache ."
            sh "docker run -d --rm -p 8761:8761 --name ${params.containerName}"
        }
    }
  }
}
