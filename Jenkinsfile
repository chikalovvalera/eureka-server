pipeline {
  agent { dockerfile true }
  tools {
    maven 'Maven'
    jdk 'Java'
  }
  parameters {
    string(name: 'IMAGE_NAME', defaultValue: 'eureka-server')
  }
  stages {
    stage('Deploy') {
        steps {
            sh "echo start deploy"
            sh "docker inspect -f '{{ .Id }}' ${image.id}"
            sh "echo start deploy docker"
            sh "docker run -d \
                --publish 8761:8761 \
                --name ${params.IMAGE_NAME} \
                ${IMAGE_ID}"
        }
    }
  }
}
