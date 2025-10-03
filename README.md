# terraform-aws-hands-on

This repository contains a collection of Terraform projects to build AWS infrastructure step by step.  
It is structured to showcase beginner to advanced concepts for my DevOps portfolio.
## Projects
1. **01-ec2-basic** → Provision a single EC2 instance with Terraform.  
2. **02-vpc-ec2** → Build a VPC, subnet, security groups, and launch an EC2 instance.  
3. **03-eks-cluster** → Deploy an Amazon EKS cluster using Terraform module.  
4. **04-advanced-terraform** → Advanced features:
  - Terraform modules (VPC, EC2, EKS reusable modules)
  - Remote state with S3 + DynamoDB
  - Workspaces for multiple environments
  - CI/CD with GitHub Actions & Jenkins
---
## How to Run
Each project has its own folder with a `README.md` and Terraform code.  
To try a project:
```bash
cd 01-ec2-basic
terraform init
terraform apply
