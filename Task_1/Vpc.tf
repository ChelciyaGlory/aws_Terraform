resource "aws_vpc" "dev" {

  # Creating VPC

  cidr_block       = "10.10.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name    = "Dev-VPC"
    Loc     = "Hyderabad"
    Env     = "Dev"
    Project = "Cloud-Lab"
  }
}
