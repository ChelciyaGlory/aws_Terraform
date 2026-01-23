resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.demo_vpc.id
  cidr_block              = var.cidr_blocks["public_subnet"]
  availability_zone       = var.public_subnet_az
  map_public_ip_on_launch = true

  tags = {
    Name = var.public_subnet_name
  }
}

resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.demo_vpc.id
  cidr_block        = var.cidr_blocks["private_subnet"]
  availability_zone = var.private_subnet_az

  tags = {
    Name = var.private_subnet_name
  }
}
