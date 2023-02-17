# Variables
# store group names
variable "groupName" {
  type = list(any)
  description = "Enter Group Names in a List: "
}

# store user names
variable "userName" {
  type = list(any)
  description = "Enter User Names in a List: "
}