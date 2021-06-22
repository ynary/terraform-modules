resource "aws_vpc" "this" {
  cidr_block = var.vpc_cidr
  tags {
    terraform         = true
    creation_occasion = var.purpose
  }
}
