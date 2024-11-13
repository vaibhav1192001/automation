output "linux_vm1_name" {
  value = azurerm_linux_virtual_machine.linux_vm1.name
}

output "linux_vm2_name" {
  value = azurerm_linux_virtual_machine.linux_vm2.name
}

output "linux_vm1_public_ip" {
  value = azurerm_linux_virtual_machine.linux_vm1.public_ip_address
}

output "linux_vm2_public_ip" {
  value = azurerm_linux_virtual_machine.linux_vm2.public_ip_address
}

output "linux_vm1_private_ip" {
  value = azurerm_linux_virtual_machine.linux_vm1.private_ip_address
}
output "linux_vm2_private_ip" {
  value = azurerm_linux_virtual_machine.linux_vm2.private_ip_address
}

output "linux_vm1_fqdn" {
  description = "The FQDN of the Linux VM1 public IP"
  value       = azurerm_public_ip.linux_vm1_pip.fqdn
}

output "linux_vm2_fqdn" {
  description = "The FQDN of the Linux VM2 public IP"
  value       = azurerm_public_ip.linux_vm2_pip.fqdn
}

