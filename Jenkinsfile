pipeline {
  agent {
    node {
      label 'docker'
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