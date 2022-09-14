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

                        sh "mvn clean install -Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true -Dmaven.wagon.http.ssl.ignore.validity.dates=true"
                  }
            }
      }
}
