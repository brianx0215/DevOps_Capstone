# DevOps_Capstone
##Introduction
This is a capstone project for Udacity DevOps Nanodegree. The project shows a way to deploy a minimum kubernetes cluster running with a single page web application.

##Overview
In this project, we use Jenkins to build a private Docker image and deploy the image in Amazon Elastic Kubernetes Service. With the power of CI/CD and rolling deployment strategy, the website can have a great scalability and availability in use.

##Prerequest tools on your server
Jenkins, docker, kubectl, eksctl, aws cli, hadolint, pylint

##Steps
1. [Create a Key pair](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html) on you aws web console.(The key name in this project is Udapeople)
2. Register and Docker account and replace the name of the private docker image in [Jenkinsfile](https://github.com/brianx0215/DevOps_Capstone/blob/master/Jenkinsfile). (The image name in this project is brianx0215/uda-capstone:1.0)
3. [Create a blue ocean pipeline](https://www.jenkins.io/doc/book/blueocean/creating-pipelines/) and link your Jenkins with the Github project. Install additional plugins(Pipeline: AWS Steps, Docker Pipeline, Blue Ocean). And set your credentials.
4. Create an [Managed EKS cluster](https://docs.aws.amazon.com/eks/latest/userguide/getting-started-eksctl.html) and get the [Cluster ARN](https://docs.aws.amazon.com/cli/latest/reference/ecs/describe-clusters.html) of your EKS cluster. This will take several miniutes.
5. Replace the Cluster with yours(The ARN in this project is `arn:aws:eks:eu-west-1:569778442945:cluster/uda-capstone`).
6. Run the Jenkins pipeline. The deployment info will be displayed in the Jenkins console output.
7. Cheer when success.