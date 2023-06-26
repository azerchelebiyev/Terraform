resource "aws_iam_user" "Azer" {
  name = "Azer"

  tags {
    env="prod"
    job="devops"

  }
}