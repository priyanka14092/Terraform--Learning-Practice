# ------- APPROACH 1 -------
# ADD USERS TO GROUPS USING depends_on META-ARGUMENT
resource "aws_iam_user_group_membership" "iam-user-group" {
  for_each = var.userList != null ? toset(var.userList) : []
  user = each.value
  groups = var.groupList
}

# resource "aws_iam_group_membership" "iam-user-group1" {
#   name = var.groupList[0]
#   for_each = var.userList != null ? toset(var.userList) : []
#   users = [ each.value ]
#   group = var.groupList[0]
# }

# resource "aws_iam_group_membership" "iam-user-group2" {
#   name = var.groupList[1]
#   for_each = var.userList != null ? toset(var.userList) : []
#   users = [ each.value ]
#   group = var.groupList[1]
# }

# ------- APPROACH 2 -------
# ADD USERS TO GROUPS USING locals BLOCK

# resource "aws_iam_user_group_membership" "iam-user-group-local" {
#   for_each = var.userList != null ? toset(var.userList) : []
#   user = each.value
#   groups = var.groupList
# }

# resource "aws_iam_group_membership" "iam-user-group1-local" {
#   name = var.groupList[0]
#   for_each = var.userList != null ? toset(var.userList) : []
#   users = [ each.value ]
#   group = var.groupList[0]
# }

# resource "aws_iam_group_membership" "iam-user-group2-local" {
#   name = var.groupList[1]
#   for_each = var.userList != null ? toset(var.userList) : []
#   users = [ each.value ]
#   group = var.groupList[1]
# }