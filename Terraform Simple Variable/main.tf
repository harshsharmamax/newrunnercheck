variable "harshRG00" {}

resource "azurerm_resource_group" "name" {
  name     = var.harshRG00
  location = "eastus"
}