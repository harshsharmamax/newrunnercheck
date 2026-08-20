variable "hRG1" {
  default = "harsh"
}

resource "azurerm_resource_group" "hhhh" {
  name = var.hRG1
  location = "eastus"
}