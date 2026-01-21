resource "aws_instance" "app" {
  ami           = var.ami_id
  instance_type = var.instance_type
  #count         = var.instance_count
   monitoring    = var.ec2_monitoring

  tags = {
    Name = "Mumbai-Instance"
}
}
 #variable "instance_count" {
  #description = "value"
  #type        = number
  #default     = 5

  variable "ec2_monitoring" {
  description = "Enable EC2 detailed monitoring"
  type        = bool
  default     = true
}

