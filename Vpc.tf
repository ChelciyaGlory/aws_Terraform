resource "aws_vpc" "prod" {

  # Creating VPC

  cidr_block       = "192.168.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name    = "JavaHome-VPC"
    Loc     = "Bengaluru"
    Env     = "Prod"
    Project = "DHC"
  }
}