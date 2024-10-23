provider "azurerm" {
  features {}
}

resource "azurerm_virtual_network" "vnet10" {
  name                = "vnet10"
  address_space       = ["10.2.0.0/16"]
  location            = "East US"
  resource_group_name = "YourResourceGroup"
}

resource "azurerm_subnet" "public_subnet" {
  name                 = "public_subnet"
  resource_group_name  = "YourResourceGroup"
  virtual_network_name = azurerm_virtual_network.vnet10.name
  address_prefixes     = ["10.2.1.0/24"]
}