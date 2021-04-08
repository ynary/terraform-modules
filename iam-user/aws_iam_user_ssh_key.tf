resource "aws_iam_user_ssh_key" "this" {
  count      = var.enable_aws_iam_user_ssh_key ? 1 : 0
  username   = aws_iam_user.this.name
  encoding   = "SSH"
  public_key = var.aws_iam_user_ssh_public_key
}
