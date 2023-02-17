# user name
output "op-userName" {
  value = [for v in var.userList : v]
}