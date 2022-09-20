pipeline {
      agent none
      stages {
            stage('Maven build') {
                  agent{
                        docker{
                              image 'maven:3.6.1'
                        }
                  }
                  steps{

                        
                        sh "mvn clean install -Dcheckstyle.skip"
                  }
            }
            stage('Docker Build'){
                  agent any
                  steps {
                        sh 'docker build -t matterator/spring-petclinic:latest .'

                  }
            }

            stage('Docker push'){
                  agent any
                  steps{
                        withDockerRegistry(credentialsId: 'dockerhub', toolName: 'Docker') {
                             sh 'docker push matterator/javadocdevelop:latest' 
                        }            
        	            //sh "echo ${env.dockerHubPassword} | docker login -u ${env.dockerHubUser} --password-stdin "
                        
                  }
            }
      }
}
