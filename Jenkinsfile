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
            sh "docker stop ${params.IMAGE_NAME} || true && docker rm ${params.IMAGE_NAME} || true"
            sh "docker run -d \
                --name ${params.IMAGE_NAME} \
                --publish 8761:8761 \
                ${params.IMAGE_NAME}:${BUILD_ID}"
        }
    }
  }
}
