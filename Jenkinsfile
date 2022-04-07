pipeline {
  agent {
    dockerfile true
  }
  stages {
    stage('build container eureka server') {
      steps {
       echo 'run' 
       echo 'mvn clean package'
      }
    }
  }
}
