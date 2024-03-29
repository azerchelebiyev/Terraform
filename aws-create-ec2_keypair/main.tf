resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = file("/root/.ssh/id_rsa.pub")
}

resource "aws_instance" "web" {
  ami           = "ami-0c0e36522a91d66e1"
  instance_type = "t3.micro"
  tags          = local.common_tags
}

resource "aws_instance" "db" {
  ami           = "ami-0c0e36522a91d66e1"
  instance_type = "t3.micro"
  tags          = local.common_tags
}

locals {
  common_tags = {
    Department = "finance"
    Project    = "cerberus"
  }
}