resource "aws_iam_user_group_membership" "this" {
  user   = aws_iam_user.this.name
  groups = var.iam_user_groups
}
