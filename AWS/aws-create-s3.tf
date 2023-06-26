resource "aws_s3_bucket" "example" {
  bucket = "azer_devops"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}