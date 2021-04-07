resource "aws_subnet" "this" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block

  tags {
    terraform         = true
    creation_occasion = var.creation_occasion
  }
}
