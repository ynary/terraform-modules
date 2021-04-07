resource "aws_eip" "this" {
  count = var.enable_nat_gateway ? 1 : 0
  vpc   = true
}