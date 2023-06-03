resource "aws_vpc" "iac" {
  tags = {
    "Name" = "iac"
  }
  cidr_block           = var.cidr_block_vpc
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support
}