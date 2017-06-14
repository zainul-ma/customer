pipeline {
  agent any
  stages {
    stage('Build Go & Env') {
      steps {
        tool(name: 'Golang', type: 'go')
        sh 'go env'
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
    stage('Integration Test') {
      steps {
        sh 'cd /go/src/customer/tests/integration && go test ./...'
      }
    }
    stage('Unit Test') {
      steps {
        sh 'cd /go/src/customer/tests/unit && go test ./...'
      }
    }
    stage('Component Test') {
      steps {
        sh 'cd /go/src/customer/tests/components && go test ./...'
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