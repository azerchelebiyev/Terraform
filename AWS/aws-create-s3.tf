resource "aws_s3_bucket" "bucket" {
  bucket = "azer_devops"

  tags = {
    Name = "My bucket"
    Environment = "Dev"
  }
}