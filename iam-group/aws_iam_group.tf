resource "aws_iam_group" "this" {
  name = var.aws_iam_group_name
  path = var.aws_iam_group_path
}
