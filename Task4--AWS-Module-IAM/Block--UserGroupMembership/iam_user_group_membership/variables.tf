# store group names
variable "groupList" {
  type = list(any)
  description = "Enter Group Names in a List: "
}
# store user names
variable "userList" {
  type = list(any)
  description = "Enter User Name in a List: "
}