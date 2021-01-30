pipeline {
    agent {
        docker { image 'ubuntu:latest' }
    }
    stages {
        stage('Install Dependencies'){
            steps{
                sh 'apt install python3'
                sh 'pip install --upgrade pip'
		        sh 'pip install -r requirements.txt'
                sh 'wget -O ./hadolint https://github.com/hadolint/hadolint/releases/download/v1.19.0/hadolint-Linux-x86_64'
                sh 'chmod +x ./hadolint'
            }
        }
        stage('Lint Files'){
            steps{
                sh './hadolint Dockerfile'
                sh 'pylint --disable=R,C,W1203 app.py'
            }
        }
        stage('Build Docker'){
            steps{
                echo 'lint'
            }
        }
        stage('Deploy Docker'){
            steps{
                echo 'lint'
            }
        }
    }
}
