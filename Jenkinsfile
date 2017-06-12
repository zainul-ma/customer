pipeline {
  agent any
  stages {
    stage('prepare') {
      steps {
        parallel(
          "prepare": {
            sh 'go env'
            
          },
          "show who i am i": {
            sh 'echo $USER'
            
          }
        )
      }
    }
  }
}