pipeline {
    agent any
    stages {
        stage("Lint Files"){
            steps{
                sh "hadolint Dockerfile"
                sh "pylint --disable=R,C,W1203 app.py"
            }
        }
        stage("Build Docker Image"){
            dockerImage = docker.build("brianx0215/uda-capstone:1.0")
        }
        stage("Push Docker Image") {
            docker.withRegistry("https://registry-1.docker.io/v2/", "dockerhub-cred") {
                dockerImage.push()
            }
        }
        stage("Deploy Docker Image") {
              steps{
                  withAWS(credentials: "aws-cred", region: "eu-west-1") {
                      sh "aws eks update-kubeconfig --region eu-west-1 --name uda-capstone-cluster"
                      sh "kubectl config use-context arn:aws:eks:eu-west-1:569778442945:cluster/uda-capstone-cluster"
                      sh "kubectl set image deployment/uda-capstone-deployment uda-capstone=brianx0215/uda-capstone:latest"
                      sh "kubectl apply -f deployment.yml"
                      sh "kubectl get nodes"
  		              sh "kubectl get pods -o wide"
                  }
              }
        }
    }
}
