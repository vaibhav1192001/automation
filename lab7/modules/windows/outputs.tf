output "windows_vm1_name" {
  value = azurerm_windows_virtual_machine.windows_vm1.name
}

output "windows_vm1_private_ip" {
  value = azurerm_network_interface.windows_vm1_nic.private_ip_address
}

output "windows_vm1_public_ip" {
  value = azurerm_windows_virtual_machine.windows_vm1.public_ip_address
}


output "windows_fqdn1" {
  value = azurerm_public_ip.windows_vm1_pip.fqdn
}
