pipeline {
  stages {
    stage('Prepare Environment') {
      docker.image('go:1.8.1').inside {
        stage("Install Bundler") {
          sh "go env"
        }
      }
    }
    stage('Build Environment') {
      steps {
        sh 'echo "test"'
      }
    }
  }
}
