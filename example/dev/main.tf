module "vpc" {
  source = "../../modules/vpc"

  project_name         = "platform"
  environment          = "dev"
  aws_region           = var.aws_region
  vpc_cidr             = var.vpc_cidr
  az_count             = var.az_count
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  tags                 = var.tags
}