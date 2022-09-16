pipeline {
      agent none
      stages {
            stage('Maven build') {
                  agent{
                        docker{
                              image 'maven:3.5.3'
                        }
                  }
                  steps{

                        
                        sh "mvn clean install"
                  }
            }
      }
}
