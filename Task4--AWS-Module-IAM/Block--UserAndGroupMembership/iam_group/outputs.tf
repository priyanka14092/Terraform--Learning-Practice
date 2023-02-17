# group name
output "op-groupName" {
  value = aws_iam_group.iam-group[*].name
}