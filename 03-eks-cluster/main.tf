###########################################
# AWS Provider
###########################################

provider "aws" {
  region = "us-east-1"
}

###########################################
# EKS Cluster using Terraform AWS Module
###########################################

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "17.24.0" # specify a version to avoid unexpected changes

  name               = var.cluster_name
  kubernetes_version = var.cluster_version
  vpc_id             = var.vpc_id
  subnet_ids         = var.subnets

  eks_managed_node_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1
      instance_types   = ["t3.medium"]
      labels = {
        role = "worker"
      }
      tags = {
        Name = "terraform-eks-node-group"
      }
    }
  }

  tags = {
    Environment = "dev"
    Project     = "terraform-eks-cluster"
  }
}