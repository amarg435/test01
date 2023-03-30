pipeline {
  agent any
  
  tools {
    maven 'maven-3.9.1' 
    docker 'docker'
  }
  stages {
    stage ('Build') {
      steps {
	sh 'echo "hello-2000"'
      }
    }
    stage ('Docker Image Create') {
      steps {
	  sh 'echo "hello-2"'
	  sh 'docker build . -t ${BUILD_ID}'
	  sh 'ls -lart '
      }
    }
	  
     stage ('Docker Image Push') {
      steps {
	  sh 'echo "hello-2"'
      }
    }
     stage ('Deploy') {
      steps {
	  sh 'echo "hello-2"'
      }
    }
  }
}
