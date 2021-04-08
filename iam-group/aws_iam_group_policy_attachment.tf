resource "aws_iam_group_policy_attachment" "this" {
  for_each   = toset(var.attached_policy_list)
  group      = aws_iam_group.this.name
  policy_arn = each.value
}
