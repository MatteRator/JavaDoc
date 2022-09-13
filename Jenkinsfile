pipeline {
      agent any
      stages {
            stage('Maven build') {
                  steps{
                        sh "chmod 755 mvnw"
                        sh "./mvnw dependency:resolve"
                  }
            }
      }
}
