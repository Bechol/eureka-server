pipeline {
    agent any
    tools {
        maven 'maven'
    }
    stages {
        stage('Maven clean install') {
            steps {
                bat 'mvn clean install'
            }
        }
    }
}