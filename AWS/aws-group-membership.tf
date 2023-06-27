resource "aws_iam_group_membership" "my-group-membership-01" {
  name = "DevOps-membership"

  users = [
    aws_iam_user.user-01.name,
    aws_iam_user.user-02.name,
  ]

  group = aws_iam_group.group-01.name
}

resource "aws_iam_group" "group-01" {
  name = "DevOps_Team"
}

resource "aws_iam_user" "user-01" {
  name = "Nihad"
}

resource "aws_iam_user" "user-02" {
  name = "Ruslan"
}