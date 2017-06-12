pipeline {
  agent {
    docker {
      image 'go'
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