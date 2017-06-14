pipeline {
  agent any
  stages {
    stage('Verify golang env') {
      steps {
        tool(name: 'Golang', type: 'go')
        sh 'go env'
        sh 'sudo mkdir -p $GOPATH/src'
        sh 'go version'
        sh 'ls -lah $GOPATH/'
        sh 'go env'
        sh 'echo $GOENV'
        sh 'sudo mkdir -p $GOPATH/global'
      }
    }
    stage('Install App & Dep') {
      steps {
        tool(name: 'Golang', type: 'go')
        sh 'sudo mkdir -p $GOPATH/src/customer &&  cp -r ./* $GOPATH/src/customer'
        sh 'wget -qO- https://raw.githubusercontent.com/pote/gpm/v1.4.0/bin/gpm | bash'
        sh 'go get github.com/mattn/goveralls'
        sh 'cd $GOPATH/src/customer'
        sh 'ls -lah && pwd'
        sh 'ls -lah $GOPATH/src/customer'
      }
    }
    stage('Integration Test') {
      steps {
        tool(name: 'Golang', type: 'go')
        sh 'cd $GOPATH/src/customer/tests/integration && go test ./...'
      }
    }
    stage('Unit Test') {
      steps {
        tool(name: 'Golang', type: 'go')
        sh 'cd $GOPATH/src/customer/tests/unit && go test ./...'
      }
    }
    stage('Build Image') {
      steps {
        sh 'docker build -t apalahitunamanya2/customer:latest .'
        sh 'docker login -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD";'
        sh 'docker push apalahitunamanya2/customer:latest;'
        sh 'ssh -i $KEY_SSH -oStrictHostKeyChecking=no $USER_SSH@$HOST_DEV  "bash -s" < deploy-update-docker.sh'
      }
    }
  }
  environment {
    GOENV = 'local'
    DOCKER_USERNAME = 'apalahitunamanya2'
    DOCKER_PASSWORD = 'donokasinoindro123'
    KEY_SSH = '/var/lib/jenkins/workspace/tn-indo-key.pem'
    USER_SSH = 'ubuntu'
    HOST_DEV = '203.154.91.182'
  }
}
