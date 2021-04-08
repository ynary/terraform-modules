module "subnet" {
  for_each                = toset(var.subnet_cidr_list)
  source                  = "./subnet"
  cidr_block              = each.value
  enable_nat_gateway      = var.enable_nat_gateway
  creation_occasion       = var.creation_occasion
  vpc_id                  = aws_vpc.this.id
  enable_internet_gateway = var.enable_internet_gateway
  aws_internet_gateway    = aws_internet_gateway.this
}
