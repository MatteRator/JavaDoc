pipeline {
      agent none
      stages {
            stage('Maven build') {
                  agent{
                        docker{
                              image 'maven:3.6.3'
                        }
                  }
                  steps{
                        //sh "chmod 755 mvnw"
                        sh "mvn clean install"
                  }
            }
      }
}
