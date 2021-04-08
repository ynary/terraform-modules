resource "aws_nat_gateway" "this" {
  count         = var.enable_nat_gateway ? 1 : 0
  allocation_id = aws_eip.this.0.id
  subnet_id     = aws_subnet.this.id
}
