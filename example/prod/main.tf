provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "../../modules/vpc"

  name_prefix = "enterprise"
  environment = "prod"
  vpc_cidr    = "10.30.0.0/16"
  az_count    = 3

  public_subnet_newbits  = 4
  private_subnet_newbits = 4
  nat_gateway_mode       = "per_az"

  enable_s3_endpoint      = true
  enable_ecr_endpoints    = true
  enable_flow_logs        = true
  flow_log_retention_days = 90

  tags = {
    CostCenter = "platform-prod"
    Team       = "platform"
    Compliance = "sox-hipaa"
  }
}