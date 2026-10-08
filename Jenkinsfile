pipeline {
    agent any

    options {
        skipDefaultCheckout(true)
    }

    stages {

        stage('Checkout') {
            steps {
                deleteDir()
                checkout scm

                sh 'ls -la'
                sh 'ls -la backend'
                sh 'ls -la frontend'
            }
        }

        stage('Build Backend Image') {
            steps {
                sh 'docker build -t devops-backend:1.0 ./backend'
            }
        }

        stage('Build Frontend Image') {
            steps {
                sh 'docker build -t devops-frontend:1.0 ./frontend'
            }
        }

        stage('Test') {
            steps {
                sh 'docker images'
            }
        }
    }
}
