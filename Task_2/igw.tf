# Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = "vpc-0f4360f50e5d5c00c"

  tags = {
    Name = "simple-igw"
  }
}