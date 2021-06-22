variable "purpose" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "cidr_block" {
  type = string
}

variable "availability_zone" {
  type = string
}

variable "enable_nat_gateway" {
  type = bool
}

variable "enable_internet_gateway" {
  type = bool
}

variable "aws_internet_gateway" {
  type = bool
}

variable "map_public_ip_on_launch" {
  type = bool
}
