aws_region           = "us-east-1"
vpc_cidr             = "10.10.0.0/16"
az_count             = 3
public_subnet_cidrs  = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
private_subnet_cidrs = ["10.10.101.0/24", "10.10.102.0/24", "10.10.103.0/24"]

tags = {
  CostCenter = "ENG-PROD-001"
  Owner      = "PlatformTeam"
}