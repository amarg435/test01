// Jenkinsfile (Declarative Pipeline)

pipeline {
    agent any

    stages {
        stage('CHECKOUT') {
            
            steps {
                sh 'echo Github CHECKOUT successfully'
        
        stage("Run Tests") {
            steps {
                    sh '''
                    echo "Checking for Json file with attrinute 'Status' active and replacing with paused value"
                    echo "Current Path:"
                    pwd
                
                    echo "Demo testing successfull..."  
                    echo "Checking for Json file with attrinute 'Status' active and replacing with paused value"

                    echo "Installing PyPi Packages and configuring Posgtre DB..."
                    echo "Current Path:"
                    pwd
                    echo "Current Workspace:"
                    ls -la
                    export PYTHONPATH=$pwd:$PYTHONPATHdelete
                    export PATH="$PATH:/home/jenkins/.local/bin"

                    echo "Labeling PR as 'in_development'"
                    GIT_COMMIT=$(git rev-parse HEAD)
                    echo -e "Commit ID: $GIT_COMMIT"
                    if [ ${CHANGE_ID} ]; then
                        echo "inside ifffffffffffffffffffffffffffffffff"
                    fi
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
