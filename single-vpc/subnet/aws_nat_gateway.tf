resource "aws_nat_gateway" "this" {
  count         = var.enable_nat_gateway ? 1 : 0
  allocation_id = aws_eip.this.id
  subnet_id     = aws_subnet.this.id

  tags {
    terraform         = true
    creation_occasion = var.creation_occasion
  }
}