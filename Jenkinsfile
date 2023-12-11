pipeline {
    agent any

    stages {
        stage('Checkout SCM') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    def customImage = docker.build('moja_aplikacja_flask:latest', '.')
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    customImage = docker.image('moja_aplikacja_flask:latest')
                    customImage.run('-p 5000:5000 --name moja_aplikacja_flask_container -d -v ' + pwd() + ':/app')
                }
            }
        }
    }

    post {
        always {
            script {
                customImage.inside {
                    echo 'Cleaning up...'
                }
            }
        }
    }
}