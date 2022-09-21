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
                        //sh "./mvnw package"
                        //sh "mvn clean install -Dcheckstyle.skip"
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
                        sh 'docker logout'
        	            sh "echo ${env.dockerHubPassword} | docker login -u ${env.dockerHubUser} --password-stdin docker.io"
                        sh 'docker push matterator/javadocdevelop:latest'  
                  }
            }
      }
}
