resource "aws_ebs_volume" "example" {
  availability_zone = "ap-south-1b"
  size              = 200
  type              = "gp3"
  encrypted         = var.ebs_encryption
}

variable "ebs_encryption" {
  description = "value"
  type        = bool
  default     = true
}
