variable "resource_group_name" {}

variable  "common_tags" {}

variable "location" {}

variable "vnet_name" {
  type    = string
  default = "n01607294-vnet"
}

variable "vnet_address_space" {
  default = ["10.0.0.0/16"]
}

variable "subnet_name" {
  type    = string
  default = "n01607294-subnet"
}

variable "subnet_prefixes" {
  default = ["10.0.0.0/24"]
}

variable "nsg_name" {
  type    = string
  default = "n01607294-nsg"
}
