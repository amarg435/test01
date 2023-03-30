pipeline {
  agent any
  
  //Get the Latest tag
  DOCKER_TAG = getDockerTag()
  
  tools {
    maven 'maven-3.9.1' 
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
	  sh 'docker build . -t dovyear2020/amar:${DOCKER_TAG}'
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
