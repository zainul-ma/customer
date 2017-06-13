pipeline {
  agent {
    docker {
      image 'golang:1.8.1'
      args '-u root'
    }

  }
  stages {
    stage('Build Go & Env') {
      steps {
        sh 'mkdir -p $GOPATH/src'
        sh '$USER'
        sh 'go version'
        sh 'ls -lah /go/'
        sh 'go env'
        sh 'echo $GOENV'
      }
    }
    stage('Install App & Dep') {
      steps {
        sh 'git clone --depth=50 --branch=master https://github.com/zainul-ma/customer.git /go/src/customer'
        sh 'wget -qO- https://raw.githubusercontent.com/pote/gpm/v1.4.0/bin/gpm | bash'
        sh 'go get github.com/mattn/goveralls'
        sh 'cd /go/src/customer'
        sh 'ls -lah && pwd'
        sh 'ls -lah /go/src/customer'
      }
    }
    stage('Build Image') {
      steps {
        sh 'docker'
      }
    }
  }
  environment {
    GOENV = 'testCi'
  }
}
