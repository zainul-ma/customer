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
        sh 'wget -qO- https://raw.githubusercontent.com/pote/gpm/v1.4.0/bin/gpm | bash'
        sh 'gpm'
        sh 'go get github.com/mattn/goveralls'
        sh 'ifconfig'
      }
    }
  }
}