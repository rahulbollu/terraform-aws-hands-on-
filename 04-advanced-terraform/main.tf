module "vpc" {
  source             = "./modules/vpc"
  region             = var.region
  project_name       = var.project_name
  public_subnets     = ["10.0.1.0/24", "10.0.2.0/24"]
  availability_zones = ["us-east-1a", "us-east-1b"]
}

module "ec2" {
  source            = "./modules/ec2"
  region            = var.region
  project_name      = var.project_name
  subnet_id         = module.vpc.public_subnet_ids[0]
  security_group_id = module.vpc.default_sg_id
  ami_id            = var.ami_id
}

module "eks" {
  source         = "./modules/eks"
  region         = var.region
  project_name   = var.project_name
  vpc_id         = module.vpc.vpc_id
  subnet_ids     = module.vpc.public_subnet_ids
  cluster_name   = var.cluster_name
}
