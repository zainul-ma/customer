pipeline {

  agent {
    docker {
      image 'golang:1.8.1'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'mkdir -p $GOPATH/src'
        sh '$USER'
        sh 'go version'
      }
    }
    stage('Install package') {
      steps {
        sh 'wget -qO- https://raw.githubusercontent.com/pote/gpm/v1.4.0/bin/gpm | bash'
        sh 'gpm install'
        sh 'go get github.com/mattn/goveralls'
        sh 'ifconfig'
      }
    }
  }
}
