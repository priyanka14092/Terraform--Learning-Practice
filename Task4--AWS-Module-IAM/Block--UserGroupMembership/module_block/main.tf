# Modules
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

# ------- APPROACH 1 -------
# # module for iam-user-group-membership using depends_on meta-argument
module "iam-user-group-membership-mod" {
  source = "../iam_user_group_membership"
  userList = var.userName
  groupList = var.groupName
  depends_on = [
    module.iam-user-mod,
    module.iam-group-mod
  ]
}

# ------- APPROACH 2 -------
# # local block to fetch the users and groups
# locals {
#   userListMod = module.iam-user-mod.op-userName
#   groupListMod = module.iam-group-mod.op-groupName
# }

# # module for iam-user-group-membership using locals block
# module "iam-user-group-membership-mod" {
#   source = "../iam_user_group_membership"
#   userList = local.userListMod
#   groupList = local.groupListMod
# }