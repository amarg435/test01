// Jenkinsfile (Declarative Pipeline)

pipeline {
    agent any

    stages {
        stage('CHECKOUT') {
            
            steps {
               
                sh 'echo Github CHECKOUT successfully'
                
            }
        }
        stage('Run Tests') {
            steps {
                
                sh '''
                    echo "Checking for Json file with attrinute 'Status' active and replacing with paused value"
                    echo "Current Path:"
                    pwd
                    
                '''
            }
        }
        stage('Deploy') {
           
            steps {
                sh 'echo Deploying: Moving to Deploy target folder location'
            }
        }
    }
}