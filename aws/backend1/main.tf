resource "azurerm_virtual_network" "mynet" {
  name                = "mynet"
  location            = "East Us"
  resource_group_name = kishore
  address_space       = ["10.0.0.0/16"]
}