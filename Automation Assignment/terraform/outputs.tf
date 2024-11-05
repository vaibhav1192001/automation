output "log_analytics_workspace_name" {
  value = module.common_services_4098.log_analytics_workspace_name
}

output "recovery_vault_name" {
  value = module.common_services_4098.recovery_vault_name
}

output "storage_account_name" {
  value = module.common_services_4098.storage_account_name
}

output "database_name" {
  value = module.database_4098.db
}

output "load_balancer_name" {
  value = module.loadbalancer_4098.load_balancer_name
}

output "networking_rg" {
  value = module.resource_group.resource_group_name
}

output "linux_vm_hostnames" {
  value = module.vmlinux_4098.vm_hostnames
}

output "wm_hostname" {
  value = module.vmwindows_4098.hostname
}

output "vm_fqdns" {
  value = module.vmlinux_4098.vm_fqdns
}

output "wm_fqdn" {
  value = module.vmwindows_4098.wm_fqdn
}

output "wm_private_ip" {
  value = module.vmwindows_4098.wm_private_ip
}
output "vm_private_ip" {
  value = module.vmlinux_4098.vm_private_ip
}
output "vm_public_ip" {
  value = module.vmlinux_4098.vm_public_ip
}

output "wm_public_ip" {
  value = module.vmwindows_4098.wm_public_ip
}

output "subnet_name" {
  value = module.network_4098.subnet_name
}

output "subnet_id" {
  value = module.network_4098.subnet_id
}

output "virtual_network_name" {
  value = module.network_4098.virtual_network_name
}