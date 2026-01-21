# -------------------------
# Public Security Group
# -------------------------
resource "aws_security_group" "public_sg" {
  name        = "Dev-Public-EC2-SG"
  description = "Allow SSH & HTTP from Internet"
  vpc_id      = "vpc-03a21150eefa64433"  # Your Dev-VPC ID

  # Allow SSH
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow HTTP
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow HTTPS
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Dev-Public-SG"
  }
}

# -------------------------
# Private Security Group
# -------------------------
resource "aws_security_group" "private_sg" {
  name        = "Dev-Private-EC2-SG"
  description = "Allow SSH from Public SG"
  vpc_id      = "vpc-03a21150eefa64433"  # Your Dev-VPC ID

  # Allow SSH only from public SG
  ingress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    security_groups = [aws_security_group.public_sg.id]
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Dev-Private-SG"
  }
}
