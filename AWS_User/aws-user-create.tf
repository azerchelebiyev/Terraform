resource "aws_iam_user" "Azer" {
  name = "Azer"

  tags = {
    tag-key = "DevOpsAzer"
    environment = "dev"
  }
}