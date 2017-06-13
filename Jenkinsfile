pipeline {

  agent {
    docker {
      image 'golang:1.8.1'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'env.GOPATH=$PWD'
        sh 'mkdir -p $GOPATH/src/customer'
        dir('$GOPATH/src/marketability-service') {
            sh 'go version'
            sh 'echo $GOPATH'
            checkout scm
            sh 'ls -lah'
        }
      }
    }
    stage('Install package') {
      steps {
        sh 'go get github.com/mattn/goveralls'
        sh 'wget https://raw.githubusercontent.com/pote/gpm/v1.4.0/bin/gpm && chmod +x gpm && sudo mv gpm /usr/local/bin'
        sh 'gpm install'
        sh 'ifconfig'
      }
    }
  }
}
