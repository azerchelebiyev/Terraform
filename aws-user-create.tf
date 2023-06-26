resource "aws_iam_user" "Azer" {
  name = "Azer"

  tags {
    env="dev"
    job="devops"
  }
}