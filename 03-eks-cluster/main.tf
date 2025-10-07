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

  source          = "terraform-aws-modules/eks/aws"

  cluster_name    = var.cluster_name

  cluster_version = var.cluster_version

  vpc_id          = var.vpc_id

  subnets         = var.subnets

  # Managed Node Group configuration

  node_groups = {

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
 