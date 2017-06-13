pipeline {
  agent {
    docker {
      image 'golang:1.8.1'
    }
    
  }
  stages {
    stage('Initial') {
      steps {
        sh 'go env'
        sh '''go get -u gopkg.in/alecthomas/gometalinter.v1
go get github.com/mattn/goveralls'''
      }
    }
  }
}