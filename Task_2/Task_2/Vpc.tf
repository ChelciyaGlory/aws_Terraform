resource "aws_vpc" "demo_vpc" {
  cidr_block           = var.cidr_blocks["vpc"]
  enable_dns_support   = var.enable_dns
  enable_dns_hostnames = var.enable_dns

  tags = {
    Name = var.vpc_name
  }
}
