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
            sh "echo 1"
            sh "echo ${IMAGE_ID}"
            sh "echo ${IMAGE_NAME}"
            sh "echo 2"
            sh "docker stop ${IMAGE_ID} || true && docker rm ${IMAGE_ID} || true"
            sh "docker run -d \
                --name ${params.IMAGE_NAME} \
                --publish 8761:8761 \
                ${params.IMAGE_NAME}:${BUILD_ID}"
        }
    }
  }
}
