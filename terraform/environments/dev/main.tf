module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
}

module "ecr" {
  source = "../../modules/ecr"

  repository_name = var.repository_name
}
module "eks" {
  source = "../../modules/eks"

  cluster_name = var.cluster_name
  subnet_ids   = module.vpc.public_subnet_ids
}