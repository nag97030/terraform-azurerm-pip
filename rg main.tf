resource "azurerm_resource_group" "rg" {
  name = "rg"
  location = "westus"
}


resource "azurerm_public_ip" "example" {
  name                = var.pip
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Static"
}