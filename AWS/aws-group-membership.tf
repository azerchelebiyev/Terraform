resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.devops1.name,
    aws_iam_user.devops2.name,
  ]

  group = aws_iam_group.devops.name
}

resource "aws_iam_group" "group" {
  name = "devops"
}

resource "aws_iam_user" "user_one" {
  name = "devops1"
}

resource "aws_iam_user" "user_two" {
  name = "devops2"
}