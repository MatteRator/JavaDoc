node {
    checkout scm
    def testImage = docker.build("javadoc", "./") 

    testImage.inside {
        sh 'make test'
    }
}