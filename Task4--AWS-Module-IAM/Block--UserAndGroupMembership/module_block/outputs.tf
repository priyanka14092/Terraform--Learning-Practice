# Outputs
# output group names
output "op-groupNameMod" {
  description = "The Group Names: "
  value = module.iam-group-mod.op-groupName
}

# output user names
output "op-userNameMod" {
  description = "The User's Names: "
  value = module.iam-user-mod.op-userName
}