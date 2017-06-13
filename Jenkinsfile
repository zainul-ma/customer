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
        sh 'go get -u gopkg.in/alecthomas/gometalinter.v1'
        sh 'go get github.com/mattn/goveralls'
        sh 'wget https://raw.githubusercontent.com/pote/gpm/v1.4.0/bin/gpm && chmod +x gpm && sudo mv gpm /usr/local/bin'
        sh 'gpm install'
        sh 'ifconfig'
      }
    }
  }
}
