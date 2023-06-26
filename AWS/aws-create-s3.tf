resource "aws_s3_bucket" "bucket" {
  bucket = "azer_devops"
  acl    = "private"
  versioning {
    enabled = true
  }

  tags = {
    Name = "My bucket"
    Environment = "Dev"
  }
}