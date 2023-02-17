# module for iam-group
module "iam-group-mod" {
  source = "../iam_group"
  groupList = var.groupName
}

# module for iam-user
module "iam-user-mod" {
  source = "../iam_user"
  userList = var.userName
}

# module for iam-user-group-membership
module "iam-user-group-membership-mod" {
  source = "../iam_user_group_membership"
  userList = var.userName
  groupList = var.groupName
  depends_on = [
    module.iam-user-mod,
    module.iam-group-mod
  ]
}