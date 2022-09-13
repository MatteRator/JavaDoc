pipeline {
      agent none
      stages {
            stage('Maven build') {
                  agent{
                        docker{
                              image 'maven:latest'
                        }
                  }
                  steps{
                        sh "chmod 755 mvnw"
                        sh "mvn clean install"
                  }
            }
      }
}
