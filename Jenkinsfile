pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    bat 'docker build -t moja_aplikacja_flask:latest -f Dockerfile .'
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    bat 'docker run -p 5000:5000 -d moja_aplikacja_flask:latest'
                }
            }
        }

        stage('Print Message') {
            steps {
                echo "Build step executed successfully!"
            }
        }
    }
}