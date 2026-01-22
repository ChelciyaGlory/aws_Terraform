resource "aws_instance" "web_server" {
  ami           = "ami-00a51cc7a8cd53e3f"
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.public.id
  key_name      = "demo"
  security_groups = [aws_security_group.public_sg.id]

  tags = {
    Name = "web-server"
  }
}

resource "aws_instance" "app_server" {
  ami           = "ami-00a51cc7a8cd53e3f"
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.private.id
  key_name      = "demo"
  security_groups = [aws_security_group.private_sg.id]

  tags = {
    Name = "app-server"
  }
}

