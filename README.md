Infrastructure as Code (Terraform)

Provision a VPC with public and private subnets (if needed)
Set up Lambda functions configured for container image deployment
Configure necessary IAM roles and security groups
Set up an ECR repository for your container images
Create an API Gateway to trigger your Lambda functions
Containerization

Create a Dockerfile for the microservices, optimized for Lambda
Build and push the Docker image to ECR
Lambda Configuration

Configure Lambda functions to use container images
Set up appropriate memory and timeout settings
CI/CD (GitHub Actions)

Implement a workflow for Terraform (lint, plan, apply)
Create a workflow for building and pushing Docker images
Implement a workflow for updating Lambda functions
Monitoring and Logging

Set up CloudWatch for Lambda logging and metrics
(Bonus) Implement X-Ray for distributed tracing
Deliverables
GitHub repository containing:

Terraform code
Dockerfiles optimized for Lambda
GitHub Actions workflows
Application code (provided microservices)
Documentation:

Architecture diagram
Setup and deployment instructions
Monitoring and logging overview
Evaluation Criteria
Lambda configuration and security
API Gateway setup and integration
CI/CD pipeline efficiency and reliability
IaC quality and modularity
Containerization best practices for Lambda
Monitoring and logging effectiveness
Documentation clarity and completeness
