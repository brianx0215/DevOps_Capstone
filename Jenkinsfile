pipeline {
    agent any
    stages {
        stage('Lint Files'){
            steps{
                sh './hadolint Dockerfile'
                sh 'pylint --disable=R,C,W1203 app.py'
            }
        }
        stage('Build Docker'){
            steps{
                sh 'docker build --tag brianx0215/uda-capstone:1.0 .'
            }
        }
        stage('Push Docker Image') {
            steps {
                withDockerRegistry([url: "", credentialsId: "docker-hub"]) {
                    sh "docker tag brianx0215/uda-capstone:1.0 brianx0215/uda-capstone:1.0"
                    sh 'docker push brianx0215/uda-capstone:1.0'
                }
            }
        }
    }
}
