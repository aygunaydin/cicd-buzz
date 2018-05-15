pipeline {
  agent none
  stages {
    stage('test') {
      steps {
        git(url: 'https://github.com/aygunaydin/cicd-buzz', branch: 'master')
      }
    }
  }
}