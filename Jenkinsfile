pipeline {
      agents none
      stages {
            stage('DockerBuild') {
                  agent{
                        node {
                        checkout scm
                        def testImage = docker.build("javadoc", "./") 

                        testImage.inside {
                        sh 'echo "From inside container"'
                        }
                        }
                  }
                  steps{
                        sh 'echo "hello"'
                  }
            }
      }
}
