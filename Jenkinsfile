pipeline {
  agent any
  tools {
    maven 'maven-3.6.3' 
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
	  sh 'docker build . -t dovyear2020/encora${BUILD_ID}'
	  sh 'ls -lart '
      }
    }
	  
     stage ('Docker Image Push') {
      	withCredentials([usernamePassword(credentialsId: 'dovyear2020', usernameVariable: 'dovyear2020', passwordVariable: 'PASSWORD')]) {
	     steps {
		  sh 'echo "hello-2"'
	      }
	}
    }
     stage ('Deploy') {
	      withCredentials([usernamePassword(credentialsId: 'aws', usernameVariable: 'aws', passwordVariable: 'PASSWORD')]) {
		     steps {
			  sh 'curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"'
		          sh 'unzip awscliv2.zip'
			  sh 'sudo ./aws/install'
			  sh 'aws eks --region us-east-2 update-kubeconfig --name encora-eks-gtqcsDYH'
		      }
		}
    }
}
