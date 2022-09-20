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
                        sh 'docker build -t matterator/javadocdevelop:latest .'

                  }
            }

            stage('Docker push'){
                  agent any
                  steps{         
                        sh "echo 'Linux' | sudo echo 'hello'"
        	            sh "echo ${env.dockerHubPassword} | docker login -u ${env.dockerHubUser} --password-stdin docker.io"
                        sh 'docker push matterator/javadocdevelop:latest'  
                  }
            }
      }
}
