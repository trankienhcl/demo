pipeline {
    agent any
    
    tools {
        maven 'maven_anhdo'
    }

stages{
        stage('Build'){
            steps {
                sh 'mvn clean package'
            }
            post {
                success {
                    echo 'Archiving the artifacts'
                    archiveArtifacts artifacts: '**/target/*.war'
                }
            }
        }

        stage ('Deployment to tomcat server'){
	    steps{
	    	deploy adapters: [tomcat9(credentialsId: '8d6faeb8-194a-430e-a9a0-562aa7cf6007', path: '', url: 'http://43.201.19.241:8080/')], contextPath: null, war: '**/*.war' 
	    }
        }
    }
}
