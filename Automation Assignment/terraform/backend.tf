
terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-N01684098-RG"
    storage_account_name = "tfstaten01684098sa"
    container_name       = "tfstatefiles"
    key                  = "terraform.tfstate"
  }
}
