pipeline {
  agent any
  tools {
    maven 'maven-3.9.1' 
  }
  environment {
    DOCKERHUB_CREDENTIALS = credentials('dockerhub')
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
            sh 'whoami'
            sh 'sudo docker rmi -f $(sudo docker images -q)' 
            sh 'sudo docker build -t dovyear2020/encora:${BUILD_ID} .'
            sh 'sudo docker images '
        }
        }
            stage('Login') {
              steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW |sudo docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
              }
            }
        stage ('Docker Image Push') {
                steps {
                      sh 'echo "hello-2"'
                      sh 'sudo docker image push dovyear2020/encora:${BUILD_ID}'
                  }
      
        }
        
        stage('Integrate Jenkins with EKS Cluster and Deploy') {
          steps {			
            withCredentials([file(credentialsId: 'eks_kubeconfig', variable: 'eks_file')]) {
              script {
                sh 'aws eks update-kubeconfig --name encora-eks-gtqcsDYH --region us-east-2'
                sh 'kubectl get svc'
                sh 'kubectl apply -f deployment.yaml'
                sh 'kubectl apply -f service.yaml'
              }
          }
        }
    }
}
