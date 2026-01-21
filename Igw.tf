resource "aws_internet_gateway" "igw" {

  # Arguments

  vpc_id = aws_vpc.prod.id

  tags = {
    Name = "DHC-IGW"
  }
}
