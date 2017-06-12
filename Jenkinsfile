pipeline {
  stages {
    stage('Prepare Environment') {
      docker.image('go:1.8.1').inside {
    }
  }
  stages {
    stage('Build Environment') {
      steps {
        sh 'echo "test"'
      }
    }
  }
}
