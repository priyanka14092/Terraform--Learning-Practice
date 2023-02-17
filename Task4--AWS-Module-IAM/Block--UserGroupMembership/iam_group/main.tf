# create iam groups using count

resource "aws_iam_group" "iam-group" {
  count = var.groupList != null ? length(var.groupList) : 0
  name = var.groupList[count.index]
}