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
                        sh "mvn clean install"
                  }
            }
      }
}
