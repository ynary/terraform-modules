variable "purpose" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "subnet_setting_list" {
  type = object({
    cidr_block = string
    availability_zone = string
    map_public_ip_on_launch = bool
  })
}

variable "enable_internet_gateway" {
  type = bool
}

variable "enable_nat_gateway" {
  type = bool
}
