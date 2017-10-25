pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t vigilant-octo-tribble .'
      }
    }
  }
}