pipeline {
      agent none
      stages {
            stage('Maven build') {
                  agent{
                        docker{
                              image 'maven:3.5.0'
                        }
                  }
                  steps{
                        sh "chmod 755 mvnw"
                        sh "mvn clean install"
                  }
            }
      }
}
