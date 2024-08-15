module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "my-cluster"
  cluster_version = "1.21"
  subnets         = var.subnet_ids
  vpc_id          = var.vpc_id
}