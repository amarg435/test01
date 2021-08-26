// Jenkinsfile (Declarative Pipeline)

pipeline {
    agent any

    stages {
        stage('CHECKOUT') {
            
            steps {
                sh 'echo Github CHECKOUT successfully'
		  }
	}	
        
        stage("Run Tests") {
            steps {
                    sh '''
                    echo "Demo testing successfull..."  
                    echo "Checking for Json file with attrinute 'Status' active and replacing with paused value"
		    '''
            }
        }
        
	stage('Deploy'){
            steps {
                sh 'echo Deploying: Moving to Deploy target folder locatin'  
            }
        }
    }   
}
