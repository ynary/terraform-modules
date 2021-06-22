module "subnet" {
  for_each                = var.subnet_setting_list
  source                  = "subnet"
  cidr_block              = each.value.cidr_block
  enable_nat_gateway      = var.enable_nat_gateway
  vpc_id                  = aws_vpc.this.id
  enable_internet_gateway = var.enable_internet_gateway
  aws_internet_gateway    = aws_internet_gateway.this
  availability_zone = each.value.availability_zone
  purpose = var.purpose
  map_public_ip_on_launch = each.value.map_public_ip_on_launch
}
