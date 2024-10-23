output "vnet20_id" {
  value = azurerm_virtual_network.vnet20.id
}

output "private_subnet_id" {
  value = azurerm_subnet.private_subnet.id
}