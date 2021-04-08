variable "iam_user_name" {
  type = string
}

variable "iam_user_path" {
  type    = string
  default = "/"
}

variable "creation_occasion" {
  type = string
}

variable "iam_user_groups" {
  type = list(string)
}

variable "enable_aws_iam_user_ssh_key" {
  type    = bool
  default = false
}

variable "aws_iam_user_ssh_public_key" {
  type    = string
  default = ""
}
