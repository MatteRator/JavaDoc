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
                        sh 'chmod 755 mvnw'
                        sh 'unset MAVEN_CONFIG && env && ./mvnw package -Dcheckstyle.skip'
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
                        withDockerRegistry(credentialsId: 'dockerhub', url: "") {
                              // some block
                              sh 'docker push matterator/javadocdevelop:latest'
                        }     
                  }
            }

      }
}
