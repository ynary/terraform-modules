resource "aws_internet_gateway" "this" {
  count  = var.enable_internet_gateway ? 1 : 0
  vpc_id = aws_vpc.this.id

  tags {
    terraform         = true
    creation_occasion = var.creation_occasion
  }
}
