pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
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