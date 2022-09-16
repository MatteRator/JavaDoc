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
                        sh 'docker build -t matts/spring-petclinic:latest .'

                  }
            }

            stage('Docker push'){
                  agent any
                  steps{
                        withCredintials([usernamePassoword(credintialsID: 'dockerhub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]){
                              sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
                              sh 'docker push matts/spring-clinic:latest'
                        }
                  }
            }
      }
}
