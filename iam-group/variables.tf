variable "aws_iam_group_name" {
  type = string
}
variable "aws_iam_group_path" {
  type    = string
  default = "/"
}

variable "attached_policy_list" {
  type = list(string)
}
