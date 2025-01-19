## Task Manager Application Deployment Using ECS Infrastructure with Terraform

This repository provides a way to automatically set up and deploy a Spring Boot application using AWS ECS, Docker, ECR, and GitHub Actions. It follows DevOps best practices to ensure the deployment is efficient, scalable, and secure.

![Final Output](https://github.com/HemanthGangula/taskmaster/blob/feature1/images/final%20output.png)

## Note
For detailed documentation regarding this project, please check your email. The documentation has been sent from hemantgangula7@gmail.com.

## Key Components

### Technology Stack
- **Cloud Provider:** AWS
- **Infrastructure-as-Code:** Terraform
- **Containerization:** Docker, AWS ECR
- **Orchestration:** AWS ECS (Elastic Container Service)
- **CI/CD Pipeline:** GitHub Actions
- **Monitoring and Logging:** AWS CloudWatch Container Insights, Log Groups

### Infrastructure Provisioning
- **AWS Resources:**
  - VPC with subnets
  - Security Groups
  - ECS Cluster
  - ECS Task Definitions and Services
  - Load Balancer
  - ECR Repository
- Configured networking rules to allow necessary traffic (SSH, HTTP/HTTPS).

### Deployment Workflow
1. **Containerization:**
   - Dockerfile for building the Spring Boot application image.
   - Base image: OpenJDK with application dependencies.

2. **CI/CD Pipeline:**
   - **Build Stage:**
     - Trigger on code commits to a specific branch.
     - Build and test Docker image.
     - Push the image to ECR.
   - **Deploy Stage:**
     - Update ECS Task Definition and Service with the latest image.
     - Perform deployment with a rolling update strategy.

3. **Monitoring and Logging:**
   - AWS CloudWatch Container Insights for collecting metrics.
   - CloudWatch Log Groups for application logging.

## Deliverables
- Terraform code for infrastructure provisioning.
- Dockerfile for the Spring Boot application.
- GitHub Actions workflows for CI/CD.
- ECS Task Definition and Service configurations.
- Documentation for setup and usage.

## Usage
1. Clone the repository.
2. Configure AWS credentials.
3. Deploy infrastructure using Terraform.
4. Use the GitHub Actions workflows to build, push, and deploy the application.
5. Access metrics via AWS CloudWatch and logs via CloudWatch Log Groups.


