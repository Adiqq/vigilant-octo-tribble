pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t vigilant-octo-tribble .'
      }
    }
    stage('Deploy') {
      steps {
        sh '''docker stop vigilant-octo-tribble
docker rm vigilant-octo-tribble
docker run --name=vigilant-octo-tribble --restart=always \\
-d -p 30000:80 vigilant-octo-tribble
'''
      }
    }
  }
}