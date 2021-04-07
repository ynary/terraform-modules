variable "creation_occasion" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "subnet_cidr_list" {
  type = list(any)
}

variable "enable_internet_gateway" {
  type = boolean
}

variable "enable_nat_gateway" {
  type = boolean
}
