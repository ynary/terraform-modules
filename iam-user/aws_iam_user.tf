resource "aws_iam_user" "this" {
  name = var.iam_user_name
  path = var.iam_user_path
}
