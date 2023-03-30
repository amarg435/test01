pipeline {
  agent any
  tools {
    maven 'maven-3.9.1' 
  }
  stages {
    stage ('Build') {
      steps {
	sh 'echo "hello-2000"'
      }
    }
    stage ('Deploy') {
      steps {
	  sh 'echo "hello-2"'
      }
    }
  }
}
