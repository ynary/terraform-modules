resource "aws_route_table" "this" {
  vpc_id = var.vpc_id
  route {
    count      = var.enable_nat_gateway && var.enable_internet_gateway ? 1 : 0
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.this.id
  }

  route {
    count      = !var.enable_nat_gateway && var.enable_internet_gateway ? 1 : 0
    cidr_block = "0.0.0.0/0"
    gateway_id = var.aws_internet_gateway.id
  }

  tags {
    terraform         = true
    creation_occasion = var.creation_occasion
  }
}