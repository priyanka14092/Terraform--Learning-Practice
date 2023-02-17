# add users to groups
resource "aws_iam_user_group_membership" "iam-user-group" {
  for_each = var.userList != null ? toset(var.userList) : []
  user = each.value
  groups = var.groupList
}