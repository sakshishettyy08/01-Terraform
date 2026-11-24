aws_region           = "us-east-1"
vpc_cidr             = "10.20.0.0/16"
az_count             = 2
public_subnet_cidrs  = ["10.20.1.0/24", "10.20.2.0/24"]
private_subnet_cidrs = ["10.20.101.0/24", "10.20.102.0/24"]

tags = {
  CostCenter = "ENG-DEV-001"
  Owner      = "PlatformTeam"
}