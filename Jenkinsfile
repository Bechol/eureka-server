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
        stage('Build docker image') {
            steps {
                bat 'docker build . -t eureka-srv'
            }
        }
        stage('Deploy to docker') {
            steps {
                bat 'docker run --name eureka-server -d -p 8761:8761 eureka-srv'
            }
        }
    }
}