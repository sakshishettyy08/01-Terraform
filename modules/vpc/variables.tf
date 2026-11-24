variable "project_name" {
  description = "Workload or platform name used in resource naming and tagging"
  type        = string
}

variable "environment" {
  description = "Deployment environment (dev or prod)"
  type        = string

  validation {
    condition     = contains(["dev", "prod"], var.environment)
    error_message = "Environment must be either 'dev' or 'prod'."
  }
}

variable "aws_region" {
  description = "Target AWS region"
  type        = string
}

variable "vpc_cidr" {
  description = "Primary IPv4 CIDR block for the VPC"
  type        = string
}

variable "az_count" {
  description = "Number of Availability Zones to span (minimum 2 for high availability)"
  type        = number
  default     = 3

  validation {
    condition     = var.az_count >= 2 && var.az_count <= 4
    error_message = "az_count must be between 2 and 4."
  }
}

variable "public_subnet_cidrs" {
  description = "List of IPv4 CIDRs for public subnets, one per AZ"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "List of IPv4 CIDRs for private subnets, one per AZ"
  type        = list(string)
}

variable "single_nat_gateway_in_dev" {
  description = "When true and environment is 'dev', provision a single NAT gateway to lower non-prod cost"
  type        = bool
  default     = true
}

variable "enable_s3_endpoint" {
  description = "Provision an S3 Gateway VPC endpoint"
  type        = bool
  default     = true
}

variable "enable_ecr_endpoints" {
  description = "Provision ECR API and ECR DKR Interface VPC endpoints"
  type        = bool
  default     = true
}

variable "flow_logs_retention_days" {
  description = "CloudWatch log group retention in days for VPC Flow Logs"
  type        = number
  default     = 30
}

variable "tags" {
  description = "Common tags applied to all supported resources"
  type        = map(string)
  default     = {}
}