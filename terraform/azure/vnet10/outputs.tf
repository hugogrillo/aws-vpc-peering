output "vnet10_id" {
  value = azurerm_virtual_network.vnet10.id
}

output "public_subnet_id" {
  value = azurerm_subnet.public_subnet.id
}