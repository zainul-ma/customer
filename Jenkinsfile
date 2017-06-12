pipeline {
  agent {
    docker {
      image 'go:1.8.1'
    }
    
  }
  stages {
    stage('prepare') {
      steps {
        sh 'node -v'
      }
    }
  }
}