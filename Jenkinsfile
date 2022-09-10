node {
    checkout scm
    def testImage = docker.build("javaDoc", "./") 

    testImage.inside {
        sh 'make test'
    }
}