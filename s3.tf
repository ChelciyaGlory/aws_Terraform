resource "aws_s3_bucket" "s3" {
  bucket = "first-s3-bucket-20-jan-2026"

  tags = {
    Name        = "first-s3-bucket-20-jan-2026"
    Environment = "prod"
  }
}
