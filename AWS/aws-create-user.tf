resource "aws_iam_user" "my-user-01" {
  name = "Azer"

  tags = {
    job = "DevOps"
    environment = "dev"
  }
}