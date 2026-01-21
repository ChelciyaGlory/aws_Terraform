resource "aws_subnet" "public" {

  cidr_block        = "192.168.0.0/24"
  vpc_id            = aws_vpc.prod.id
  availability_zone = "ap-southeast-1a"

  tags = {
    Name = "Public-Subnet"
  }
}

resource "aws_subnet" "private" {

  cidr_block        = "192.168.1.0/24"
  vpc_id            = aws_vpc.prod.id
  availability_zone = "ap-southeast-1b"

  tags = {
    Name = "Private-Subnet"
  }
}



