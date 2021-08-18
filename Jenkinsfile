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

            env.GIT_REPO_NAME = scm.getUserRemoteConfigs()[0].getUrl().tokenize('/').last().split("\\.")[0]    
            withCredentials([usernamePassword(credentialsId: 'devopsgithubtoken', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
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
                        python3 .cicd/scripts/github_api_call.py -o DataWareHouseOrg -t ${PASSWORD} -r ${GIT_REPO_NAME} -l ${CHANGE_ID} -c add_labels -e "{\\"labels\\": [\\"in_development\\"]}"
                    fi
                '''
            }
        }
        
        stage('Deploy') 
            steps {
                sh 'echo Deploying: Moving to Deploy target folder location'
            }
    }
}
