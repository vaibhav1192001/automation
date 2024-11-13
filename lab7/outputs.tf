# root outputs.tf

output "networking_rg" {
  value = module.resource_group.networking_rg
}

output "linux_rg" {
  value = module.resource_group.linux_rg
}

output "windows_rg" {
  value = module.resource_group.windows_rg
}

output "vnet_name" {
  value = module.network.vnet_name
}

output "linux_vm2_public_ip" {
  value = module.linux.linux_vm2_public_ip
}

output "linux_vm1_public_ip" {
  value = module.linux.linux_vm1_public_ip
}

output "vnet_space" {
  value = module.network.vnet_address_space
}

output "subnet1" {
  value = module.network.subnet1_name
}

output "subnet1_space" {
  value = module.network.subnet1_address_prefixes
}

output "subnet2" {
  value = module.network.subnet2_name
}

output "subnet2_space" {
  value = module.network.subnet2_address_prefixes
}

output "nsg1" {
  value = module.network.nsg1
}

output "nsg2" {
  value = module.network.nsg2
}

output "windows_vm1_hostname" {
  value = module.windows.windows_vm1_name
}


output "windows_vm1_fqdn" {
  value = module.windows.windows_fqdn1
}

output "vm1_fqdns" {
  value = module.linux.linux_vm1_fqdn
}

output "vm2_fqdns" {
  value = module.linux.linux_vm2_fqdn
}

output "windows_vm1_private_ip" {
  value = module.windows.windows_vm1_private_ip
}


output "windows_vm1_public_ip" {
  value = module.windows.windows_vm1_public_ip
}

output "linux_vm1_private_ip" {
  value = module.linux.linux_vm1_private_ip
}

output "linux_vm2_private_ip" {
  value = module.linux.linux_vm2_private_ip
}