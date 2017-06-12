pipeline {
  agent {
    docker {
      image 'go:1.8.1'
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