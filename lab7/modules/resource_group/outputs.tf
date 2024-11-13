output "networking_rg" {
  value = azurerm_resource_group.networking_rg.name
}

output "linux_rg" {
  value = azurerm_resource_group.linux_rg.name
}

output "windows_rg" {
  value = azurerm_resource_group.windows_rg.name
}
