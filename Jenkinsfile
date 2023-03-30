pipeline {
    agent any
    environment {
    PATH = "/opt/apache-maven-3.8.7/bin/:$PATH"
    DOCKERHUB_CREDENTIALS = credentials('DockerHub')
    //Get the Latest tag
    DOCKER_TAG = getDockerTag()
    
     }
    
    stages{
        stage('Cleanup Workspace') {
            steps {
                cleanWs()
                sh """
                echo "Cleaned Up Workspace For Project"
                """
            }
	}
}
