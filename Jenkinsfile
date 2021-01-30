pipeline {
    agent any
    stages {
        stage('Install Dependencies'){
            steps{
                pip install --upgrade pip
		        pip install -r requirements.txt
                wget -O ./hadolint https://github.com/hadolint/hadolint/releases/download/v1.19.0/hadolint-Linux-x86_64 &&\
                chmod +x ./hadolint
            }
        }
        stage('Lint'){
            steps{
                ./hadolint Dockerfile
                pylint --disable=R,C,W1203 app.py
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
