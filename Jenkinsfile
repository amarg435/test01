pipeline {
  agent any
  tools {
    maven 'maven-3.6.3' 
  }
  stages {
    stage ('Build') {
      steps {
        sh 'echo "hello-2000"'
        sh 'docker --version'      
      }
    }
    stage ('Docker Image Create') {
      steps {
        sh 'echo "hello-2"'
        sh 'docker build . -t dovyear2020/encora${BUILD_ID}'
        sh 'ls -lart '
      }
    }
	  
    stage ('Docker Image Push') {   
            steps {
            sh 'echo "hello-2"'
            }
    }
}
