pipeline {
    agent any
    stages {
      agent {
            node {
                  checkout scm
                  def testImage = docker.build("javadoc", "./") 

                  testImage.inside {
                  sh 'echo "From inside container"'
                   }
            }
      }
        stage('DockerBuild') {
            
                  steps ('Build file'){
                  sh 'echo "Just one success pls"'
                  }
        }
    }
}
