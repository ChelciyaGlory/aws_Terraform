variable "region" {
  default = "ap-southeast-2"
}

variable "vpc_cidr" {
  default = "192.168.0.0/16"
}

variable "public_subnet_cidr" {
  default = "192.168.10.0/24"
}

variable "private_subnet_cidr" {
  default = "192.168.20.0/24"
}

variable "availability_zone" {
  default = "ap-southeast-2a"
}

