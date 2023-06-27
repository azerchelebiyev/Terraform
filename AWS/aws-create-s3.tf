resource "aws_s3_bucket" "example" {
  bucket = "azerdevops"

  tags = {
    Name = "My bucket"
    Environment = "Dev"
  }
}