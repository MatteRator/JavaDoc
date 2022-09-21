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
                        sh 'unset MAVEN_CONFIG && env && ./mvnw effective-settings'
                        sh 'chmod 755 mvnw'
                        sh "./mvnw package"
                        //sh "mvn clean install -Dcheckstyle.skip"
                  }
            }
            stage('Docker Build'){
                  agent any
                  steps {
                        sh 'docker build -t matterator/javadocdevelop:latest .'

                  }
            }

            // stage('Docker push'){
            //       agent any
            //       steps{         
            //             sh "echo 'jinkins' | sudo -S echo 'hello'"
        	//             sh "echo ${env.dockerHubPassword} | sudo docker login -u ${env.dockerHubUser} --password-stdin docker.io"
            //             sh 'docker push matterator/javadocdevelop:latest'  
            //       }
            // }
      }
}
