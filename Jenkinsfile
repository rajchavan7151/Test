pipeline {
    agent any
    tools {
        jdk 'jdk11'
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: ''
            }
        }
        stage('Compile') {
            steps {
                echo 'Compiling Java program...'
                bat 'javac HelloWorld.java'   // use 'sh' if you're on Linux
            }
        }
        stage('Run') {
            steps {
                echo 'Running the program...'
                bat 'java HelloWorld'
            }
        }
    }
    post {
        always {
            echo 'Pipeline execution completed!'
            archiveArtifacts artifacts: '*.class', fingerprint: true
        }
    }
}
