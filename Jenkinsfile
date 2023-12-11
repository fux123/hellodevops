pipeline {
    agent {
        docker {
            image 'python:3.8'  // Wybierz odpowiedni obraz Dockerowy z Pythonem
        }
    }
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Build') {
            steps {
                script {
                    // Dodaj kroki budowy obrazu Dockerowego
                    sh 'docker build -t moja_aplikacja_flask:latest -f Dockerfile .'
                }
            }
        }
        
        stage('Run') {
            steps {
                script {
                    // Dodaj kroki uruchomienia kontenera Dockerowego
                    sh 'docker run -p 5000:5000 -d moja_aplikacja_flask:latest'
                }
            }
        }
    }
}
