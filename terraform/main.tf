terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "ec2" {
  vpc_id = module.vpc.vpc_id
  source = "./modules/ec2"
  subnet_id = module.vpc.public_subnets[0]
  instance_type = var.ec2_instance_type
}

module "rds" {
  source     = "./modules/rds"
  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
  db_username = var.db_username
  db_password = var.db_password
}

module "vpc" {
  source  = "./modules/vpc"
  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = "my-cluster"
  cluster_version = "1.30"

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  cluster_endpoint_public_access = true

  tags = {
    Environment = "dev"
    Terraform   = "true"
  }
}