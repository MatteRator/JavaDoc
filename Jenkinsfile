node {
    checkout scm
    def testImage = docker.build("javadoc", "./") 
    docker.image('javadoc').withRun('-p 8000:8000')

    testImage.inside {
        sh 'echo "From inside container"'
    }
}