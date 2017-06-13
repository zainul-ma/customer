node {
  def root = tool name: 'Go 1.8.1', type: 'go'
  ws("${JENKINS_HOME}/jobs/${JOB_NAME}/builds/${BUILD_ID}/src/customer") {
    withEnv(["GOROOT=${root}", "GOPATH=${JENKINS_HOME}/jobs/${JOB_NAME}/builds/${BUILD_ID}/", "PATH+GO=${root}/bin"]) {
        env.PATH="${GOPATH}/bin:$PATH"

        stage 'Init'
        sh 'go env'
    }
  }
}
