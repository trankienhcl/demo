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
	    	deploy adapters: [tomcat9(credentialsId: '9abc5dbb-2788-4a33-abd6-28fbe60fac8f', path: '', url: 'https://52.79.118.103:8080/')], contextPath: null, war: '**/*.war' 
	    }
        }
    }
}i
