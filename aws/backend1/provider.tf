terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}
terraform {
  backend "azurerm" {
    resource_group_name  = "kishore"
    storage_account_name = "kishore987"
    container_name       = "mycont"
    key                  = "prod.terraform.tfstate"
  }
}


# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
