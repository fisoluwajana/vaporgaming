locals {
  subnet_ranges = cidrsubnets(var.cidr_range, 4, 4, 4, 4, 4, 4, 4, 4, 4)
}

data "aws_availability_zones" "azs" {}

module "vpc" {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-vpc.git?ref=v2.24.0"

  name = "${var.project_name}-vpc"
  cidr = var.cidr_range

  azs             = data.aws_availability_zones.azs.names
  private_subnets = [for i in range(3) : local.subnet_ranges[i]]
  public_subnets  = [for i in range(3, 5) : local.subnet_ranges[i]]

  enable_nat_gateway = true

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}