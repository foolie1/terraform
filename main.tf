resource "aws_instance" "vm1" {
  ami               = "ami-050cd642fd83388e4"
  availability_zone = "us-east-2b"
  instance_type     = "t2.micro"
  key_name          = "mw3"
}

resource "aws_iam_user" "user1" {
  name = "gene"
}

resource "aws_iam_user" "user2" {
  name = "admins"
}

resource "aws_iam_group" "group1" {
  name = "tfgroup"
}

resource "aws_iam_group_membership" "groupadd1" {
  name = "tf-user-group-add"
  users = [
    aws_iam_user.user1.name,
    aws_iam_user.user2.name
  ]
  group = aws_iam_group.group1.name
}