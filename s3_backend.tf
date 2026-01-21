terraform {
  backend "s3" {
    bucket = "first-s3-bucket-20-jan-2026"
    key    = "terraform.tfstate"
    region = "ap-southeast-1"
  }
}
