resource "aws_instance" "public_ec2" {
  ami                    = var.ec2_config["ami"]
  instance_type          = var.ec2_config["instance_type"]
  key_name               = var.ec2_config["key_name"]
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.public_sg.id]

  associate_public_ip_address = true   # << This is important!

  tags = {
    Name = "public-instance"
  }
}

resource "aws_instance" "private_ec2" {
  ami                    = var.ec2_config["ami"]
  instance_type          = var.ec2_config["instance_type"]
  key_name               = var.ec2_config["key_name"]
  subnet_id              = aws_subnet.private.id
  vpc_security_group_ids = [aws_security_group.private_sg.id]

  tags = {
    Name = "private-instance"
  }
}



