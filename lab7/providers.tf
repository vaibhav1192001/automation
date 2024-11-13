provider "azurerm" {
  features {
     resource_group {
       prevent_deletion_if_contains_resources = false
     }
   }
  use_cli         = true
  subscription_id = "a28aa7e1-f42a-4c99-8ef7-49c52470d680"
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  required_version = "~> 1.9.5"
}