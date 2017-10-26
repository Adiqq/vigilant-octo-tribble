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
        sh '''docker stop vigilant-octo-tribble || true
docker rm vigilant-octo-tribble || true
docker run  --network=final --name=vigilant-octo-tribble --restart=always \\
-d -p 30000:80 vigilant-octo-tribble
'''
      }
    }
  }
}