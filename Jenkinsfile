// Jenkinsfile (Declarative Pipeline)

pipeline {
    agent none
    stages {
        stage('CHECKOUT') {
            agent {
              label "linux"
            }
            steps {
                callGithub.checkoutRepo()
                sh 'echo Github CHECKOUT successfully'
                
            }
        }
        stage('Run Tests') {
            steps {
                env.GIT_REPO_NAME = scm.getUserRemoteConfigs()[0].getUrl().tokenize('/').last().split("\\.")[0]    
                withCredentials([usernamePassword(credentialsId: 'devopsgithubtoken', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) 
                sh '''
                    echo "Checking for Json file with attrinute 'Status' active and replacing with paused value"
                    echo "Current Path:"
                    pwd
                    
                '''
            }
        }
        stage('Deploy') {
            agent {
              label "linux"
            }
            steps {
                sh 'echo Deploying: Moving to Deploy target folder location'
            }
        }
    }
}
