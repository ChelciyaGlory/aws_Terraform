# Public EC2 in Public Subnet
resource "aws_instance" "public_ec2" {
  ami                         = "ami-01e7458835382048a"   # Your AMI
  instance_type               = "t2.micro"
  subnet_id                   = "subnet-05bdfd98363ed3b87"  # Dev-Public-Subnet-SG
  vpc_security_group_ids      = ["sg-0ac036f4d3496cbbc"]    # Public SG
  associate_public_ip_address = true

  tags = {
    Name = "Dev-Public-EC2"
  }
}

# Private EC2 in Private Subnet
resource "aws_instance" "private_ec2" {
  ami                         = "ami-01e7458835382048a"   # Same AMI
  instance_type               = "t2.micro"
  subnet_id                   = "subnet-0f34bcd44cde352f1"  # Dev-Private-Subnet-SG
  vpc_security_group_ids      = ["sg-05a099bee30f5e27e"]    # Private SG
  associate_public_ip_address = false

  tags = {
    Name = "Dev-Private-EC2"
  }
}
