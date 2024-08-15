provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  public_subnets = var.public_subnets
  private_subnets = var.private_subnets
}

module "ec2" {
  source = "./modules/ec2"
  subnet_id = module.vpc.public_subnets[0]
  instance_type = var.ec2_instance_type
}

module "rds" {
  source = "./modules/rds"
  subnet_ids = module.vpc.private_subnets
  db_username = var.db_username
  db_password = var.db_password
}

module "eks" {
  source = "./modules/eks"
  subnet_ids = module.vpc.private_subnets
}