locals {
  common_tags = {
    Assignment = "CCGC 5502 Automation Assignment"
    Name = "Vanshita.Verma"
    ExpirationDate = "2024-12-31"
    Environment = "Learning"
  }
}

variable "location" {
  description = "Location for the resource group"
  type        = string
  default     = "canadacentral"
}

variable "resource_group_name" {
	default	= "n01607294-RG"
}

variable "vnet_name" {
	default	= "n01607294-VNET"
}

variable "subnet_name" {
	default = "n01607294-SUBNET"
}

variable "nsg_name" {
	default = "n01607294-NSG"
}
