terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm",
        version = "=5.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "harshRG987"
    storage_account_name = "harshstorage987"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "hrg"{
    name = "harshRG987"
    location = "eastus"
}

resource "azurerm_storage_account" "name" {
    name = "harshstorage987"
    location = azurerm_resource_group.hrg.location
    resource_group_name = azurerm_resource_group.hrg.name
    account_tier = "Standard"
    account_replication_type = "LRS"
}
