pipeline {
  agent { dockerfile true }
  tools {
    maven 'Maven'
    jdk 'Java'
  }
  stages {
    stage('Deploy') {
        steps {
            sh "docker stop ${IMAGE_NAME} || true && docker rm ${IMAGE_NAME} || true"
            sh "docker run -d \
                --name ${IMAGE_NAME} \
                --publish ${PORT}:443 \
                ${IMAGE_NAME}:${BUILD_ID}"
        }
    }
  }
}
