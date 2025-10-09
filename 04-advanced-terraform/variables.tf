###########################################
# 🌍 Root-Level Variables
###########################################

# AWS Region
variable "region" {
  description = "AWS region where infrastructure will be deployed"
  type        = string
  default     = "us-east-1"
}

# Project Name
variable "project_name" {
  description = "Prefix name for tagging all resources"
  type        = string
  default     = "terraform-advanced"
}

###########################################
# 🕸️ VPC Variables
###########################################
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "availability_zones" {
  description = "List of Availability Zones for the subnets"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

###########################################
# 💻 EC2 Variables
###########################################
variable "ami_id" {
  description = "AMI ID for EC2 instance (Amazon Linux 2 in us-east-1)"
  type        = string
  default     = "ami-0360c520857e3138f"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

###########################################
# ☸️ EKS Variables
###########################################
variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "terraform-demo-eks"
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster"
  type        = string
  default     = "1.29"
}

###########################################
# 🧩 Environment
###########################################
variable "environment" {
  description = "Deployment environment (e.g. dev, stage, prod)"
  type        = string
  default     = "dev"
}
