pipeline {
  agent {
    docker {
      image 'golang:1.8.1'
    }
    
  }
  stages {
    stage('Initial') {
      steps {
        sh 'go env'
      }
    }
  }
}