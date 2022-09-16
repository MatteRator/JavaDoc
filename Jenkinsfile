pipeline {
      agent none
      stages {
            stage('Maven build') {
                  agent{
                        docker{
                              image 'maven:8.6'
                        }
                  }
                  steps{

                        sh "chmod 755 mvnw"
                        sh "./mvnw dependency:resolve"
                  }
            }
      }
}
