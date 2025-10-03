# 01 - EC2 Basic Project 🚀
This project provisions a single **EC2 instance** on AWS using Terraform.
## Files
- **provider.tf** → Defines AWS provider and region.
- **variables.tf** → Stores configurable values (AMI, instance type).
- **main.tf** → Creates the EC2 instance.
- **outputs.tf** → Prints instance details (Public IP, ID).
## How to Run
1. Initialize Terraform:
  ```bash
  terraform init