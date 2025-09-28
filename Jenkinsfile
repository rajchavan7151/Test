pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Cloning repository...'
                git branch: 'main', url: 'https://github.com/rajchavan7151/Test.git'
            }
        }
        stage('Compile') {
            steps {
                echo 'Compiling Java...'
                // Use bat for Windows agents, sh for Linux agents.
                bat 'javac HelloWorld.java'
            }
        }
        stage('Run') {
            steps {
                echo 'Running Program...'
                bat 'java HelloWorld'
            }
        }
    }
    post {
        always {
            echo 'Pipeline execution finished'
        }
    }
}
