resource "aws_subnet" "public_subnet" {

  vpc_id                  = aws_vpc.dev.id
  cidr_block              = "10.10.1.0/24"
  availability_zone       = "ap-southeast-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "Dev-Public-Subnet-SG"
    Type = "Public"
    Env  = "Dev"
  }
}


resource "aws_subnet" "private_subnet" {

  vpc_id            = aws_vpc.dev.id
  cidr_block        = "10.10.2.0/24"
  availability_zone = "ap-southeast-1a"

  tags = {
    Name = "Dev-Private-Subnet-SG"
    Type = "Private"
    Env  = "Dev"
  }
}
