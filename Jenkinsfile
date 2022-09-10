pipeline {
    stages {
            
        stage('DockerBuild') {
            node {
                  checkout scm
                  def testImage = docker.build("javadoc", "./") 

                  testImage.inside {
                  sh 'echo "From inside container"'
                   }
            }
        }
    }
}
