resource "aws_s3_bucket" "example" {
  bucket = "azerchdevops"

  tags = {
    Name = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "www.example.com"
  type    = "A"
  ttl     = 300
  records = [aws_eip.lb.public_ip]
}