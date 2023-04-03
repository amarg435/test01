pipeline {
  agent any
  tools {
    maven 'maven-3.9.1' 
  }
  environment {
    DOCKERHUB_CREDENTIALS = credentials('dockerhub')
    DOCKER_REPO_NAME = "dovyear2020/encora"
    EKS_CLUSTER = "encora-eks-cpl19SIH"
  }
  stages {
        stage ('Build') {
          steps {
              // Clean before build
              cleanWs()
              // We need to explicitly checkout from SCM here
              checkout scm
              sh 'echo "hello-2000"'
              sh 'docker --version'      
          }
        }
        stage ('Build_Package') {
          steps {
            sh 'echo "hello-2000"'
            sh 'mvn package'  
            sh 'ls -lart target/'   
          }
            }
        stage ('Docker Image Create') {
        steps {
            sh 'echo "hello-2"'
            sh 'whoami'

            sh 'sudo docker build -t ${DOCKER_REPO_NAME}:${BUILD_ID} .'
            sh 'sudo docker tag ${DOCKER_REPO_NAME}:${BUILD_ID} ${DOCKER_REPO_NAME}:latest'
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
                      sh 'echo "hello-22222"'
                      sh 'sudo docker image push ${DOCKER_REPO_NAME}:${BUILD_ID}'
                      sh 'sudo docker image push ${DOCKER_REPO_NAME}:latest'
                  }
      
        }
        
        stage('Integrate Jenkins with EKS Cluster and Deploy') {
          steps {			
            withCredentials([file(credentialsId: 'eks_kubeconfig', variable: 'eks_file')]) {
              script {
                sh 'sudo aws eks update-kubeconfig --name ${EKS_CLUSTER} --region us-east-2'
                sh 'sudo sed "s/latest/${BUILD_ID}/g" kubernetes/deployment.yaml'
                sh 'sudo cat kubernetes/deployment.yaml'
                sh 'sudo kubectl apply -f kubernetes/deployment.yaml'
              }
          }
        }
      }
    }
}
