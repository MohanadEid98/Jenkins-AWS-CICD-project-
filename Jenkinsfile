pipeline {
    agent any

    stages {

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
