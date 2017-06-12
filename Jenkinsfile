pipeline {
  agent {
    docker {
      image 'node:6.3'
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