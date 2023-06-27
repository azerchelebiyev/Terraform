resource "aws_s3_bucket" "example" {
  bucket = "azerchdevops"

  tags = {
    Name = "My bucket"
    Environment = "Dev"
  }
}