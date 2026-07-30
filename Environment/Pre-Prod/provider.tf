terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.81.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "sakv-rg"
    storage_account_name = "vmbackendstorage"
    container_name       = "vmbackendcontainer"
    key                  = "virtual_machine.tfstate"
  }

}



provider "azurerm" {
  features {}
}