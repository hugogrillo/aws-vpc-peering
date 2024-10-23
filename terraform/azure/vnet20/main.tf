provider "azurerm" {
  features {}
}

resource "azurerm_virtual_network" "vnet20" {
  name                = "vnet20"
  address_space       = ["10.3.0.0/16"]
  location            = "East US"
  resource_group_name = "YourResourceGroup"
}

resource "azurerm_subnet" "private_subnet" {
  name                 = "private_subnet"
  resource_group_name  = "YourResourceGroup"
  virtual_network_name = azurerm_virtual_network.vnet20.name
  address_prefixes     = ["10.3.1.0/24"]
}