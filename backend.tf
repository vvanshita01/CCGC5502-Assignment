terraform {
  backend "azurerm" {
    resource_group_name  = "tfstaten01607294RG"
    storage_account_name = "tfstaten01607294sa"
    container_name       = "tfstatefiles"
    key                  = "terraform.tfstate"
  }
}
