pipeline {
  agent {
    docker {
      image 'go'
    }
    
  }
  stages {
    stage('prepare') {
      steps {
        sh 'go env'
      }
    }
  }
}