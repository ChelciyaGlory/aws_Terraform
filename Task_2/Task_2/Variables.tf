
# AWS Region

variable "region" {
  type        = string
  description = "AWS region to deploy resources"
  default     = "ap-southeast-2"   # Sydney
}


# VPC

variable "vpc_name" {
  type        = string
  description = "Name of the VPC"
  default     = "my-new-vpc"   # <- Change this to your desired VPC name
}

variable "cidr_blocks" {
  type = map(string)
  description = "CIDR blocks for VPC and subnets"
  default = {
    vpc            = "10.0.0.0/16"
    public_subnet  = "10.0.1.0/24"
    private_subnet = "10.0.2.0/24"
  }
}

variable "enable_dns" {
  type        = bool
  description = "Enable DNS support and hostnames for VPC"
  default     = true
}


# Subnets

variable "public_subnet_name" {
  type        = string
  default     = "public-subnet"
}

variable "private_subnet_name" {
  type        = string
  default     = "private-subnet"
}

variable "public_subnet_az" {
  type        = string
  default     = "ap-southeast-2a"
}

variable "private_subnet_az" {
  type        = string
  default     = "ap-southeast-2b"
}

variable "map_public_ip_on_launch" {
  type    = bool
  default = true
}


# Internet Gateway

variable "igw_name" {
  type    = string
  default = "demo-igw"
}


# Security Group & Ports

variable "ssh_port" {
  type    = number
  default = 22
}

variable "http_port" {
  type    = number
  default = 80
}

variable "https_port" {
  type    = number
  default = 443
}

variable "allowed_ssh_cidr" {
  type    = set(string)
  default = ["0.0.0.0/0"]  # for testing, allow from anywhere
}


# EC2 Configuration

variable "ec2_config" {
  description = "EC2 configuration including AMI, instance type, and key name"
  type = map(string)
  default = {
    ami           = "ami-00a51cc7a8cd53e3f"  # example AMI
    instance_type = "t2.micro"               
    key_name      = "demo"                   
  }
}
