pipeline {
  agent {
    docker {
      image 'golang:1.8.1'
      args '-u root'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'mkdir -p $GOPATH/src'
        sh '$USER'
        sh 'go version'
        sh 'ls -lah /go/'
        sh 'go env'
      }
    }
    stage('Install package') {
      steps {
        sh 'git clone --depth=50 --branch=master https://github.com/zainul-ma/customer.git /go/src'
        sh 'docker ps -a'
      }
    }
  }
}
