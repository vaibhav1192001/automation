provider "azurerm" {
  features {}
  use_cli         = true
  subscription_id = "93ab0142-223b-4d23-90b6-7bb9d0fed980"
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