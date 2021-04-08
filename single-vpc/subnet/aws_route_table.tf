resource "aws_route_table" "nat" {
  count      = var.enable_nat_gateway && var.enable_internet_gateway ? 1 : 0
  vpc_id = var.vpc_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.this.0.id
  }

  tags = {
    terraform         = true
    creation_occasion = var.creation_occasion
  }
}

resource "aws_route_table" "igw" {
    count      = !var.enable_nat_gateway && var.enable_internet_gateway ? 1 : 0
  vpc_id = var.vpc_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.aws_internet_gateway.id
  }

  tags = {
    terraform         = true
    creation_occasion = var.creation_occasion
  }
}
