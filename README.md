# Create AWS CodePipeline with Multiple Environments Dev and Staging

![image](https://github.com/gautrucdethuong/IaC-devops-codepipeline-terraform/assets/57904796/71ce21ee-e7ef-493e-8df2-01f8dbebf2dd)


![image](https://github.com/gautrucdethuong/IaC-devops-codepipeline-terraform/assets/57904796/26bfb5a0-7269-44e6-944a-20c91af85fdc)

![image](https://github.com/gautrucdethuong/IaC-devops-codepipeline-terraform/assets/57904796/0ad1d3cb-8944-4a09-b10c-949359191327)

![Uploading image.png…]()

Step-08-01: Create MY_AWS_SECRET_ACCESS_KEY
Go to Services -> Systems Manager -> Application Management -> Parameter Store -> Create Parameter
Name: /CodeBuild/MY_AWS_ACCESS_KEY_ID
Descritpion: My AWS Access Key ID for Terraform CodePipeline Project
Tier: Standard
Type: Secure String
Rest all defaults
Value: ABCXXXXDEFXXXXGHXXX
Step-08-02: Create MY_AWS_SECRET_ACCESS_KEY
Go to Services -> Systems Manager -> Application Management -> Parameter Store -> Create Parameter
Name: /CodeBuild/MY_AWS_SECRET_ACCESS_KEY
Descritpion: My AWS Secret Access Key for Terraform CodePipeline Project
Tier: Standard
Type: Secure String
Rest all defaults
Value: abcdefxjkdklsa55dsjlkdjsakj

Add Build Stage
Build Provider: AWS CodeBuild
Region: N.Virginia
Project Name: Click on Create Project
Project Name: codebuild-tf-iacdevops-aws-cp1
Description: CodeBuild Project for Dev Stage of IAC DevOps Terraform Demo
Environment image: Managed Image
Operating System: Amazon Linux 2
Runtimes: Standard
Image: latest available today (aws/codebuild/amazonlinux2-x86_64-standard:3.0)
Environment Type: Linux
Service Role: New (leave to defaults including Role Name)
Build specifications: use a buildspec file
Buildspec name - optional: buildspec-dev.yml (Ensure that this file is present in root folder of your github repository)
Rest all leave to defaults
Click on Continue to CodePipeline
Project Name: This value should be auto-populated with Project Name
Build Type: Single Build
Click Next
Add Deploy Stage
Click on Skip Deploy Stage
Review Stage
Click on Create Pipeline

Create IAM Policy with Systems Manager Get Parameter Read Permission
Go to Services -> IAM -> Policies -> Create Policy
Service: Systems Manager
Actions: Get Parameters (Under Read)
Resources: All
Click Next Tags
Click Next Review
Policy name: systems-manger-get-parameter-access
Policy Description: Read Parameters from Parameter Store in AWS Systems Manager Service
Click on Create Policy

Verify Resources
Confirm SNS Subscription in your email
Verify EC2 Instances
Verify Launch Templates (High Level)
Verify Autoscaling Group (High Level)
Verify Load Balancer
Verify Load Balancer Target Group - Health Checks
Access and Test

