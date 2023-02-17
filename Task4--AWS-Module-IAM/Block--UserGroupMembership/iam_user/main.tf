# create iam users using for_each
resource "aws_iam_user" "iam-user" {
  for_each = var.userList != null ? toset(var.userList) : []
  path = "/"
  name = each.value

  tags = {
    Name = each.value
    Owner   = "Priyanka"
    Purpose = "Practice"
  }
}