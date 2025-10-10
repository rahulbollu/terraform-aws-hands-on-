###########################################
# AWS Provider
###########################################
provider "aws" {
  region = var.region
}

###########################################
# VPC Module
###########################################
module "vpc" {
  source             = "./modules/vpc"
  region             = var.region
  project_name       = var.project_name
  vpc_cidr           = var.vpc_cidr
  public_subnets     = var.public_subnets
  availability_zones = var.availability_zones
}

###########################################
# EC2 Module
###########################################
module "ec2" {
  source            = "./modules/ec2"
  region            = var.region
  project_name      = var.project_name
  subnet_id         = module.vpc.public_subnet_ids[0]
  security_group_id = module.vpc.sg_id
  ami_id            = var.ami_id
  instance_type     = var.instance_type
}

###########################################
# EKS Module
###########################################
module "eks" {
  source          = "./modules/eks"
  region          = var.region
  project_name    = var.project_name
  vpc_id          = module.vpc.vpc_id
  subnet_ids      = module.vpc.public_subnet_ids
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
}
