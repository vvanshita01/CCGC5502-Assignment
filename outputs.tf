output "Resourse_Group_Name" {
  value = module.rgroup-n01607294.resource_group_name
}

output "location" {
  value = module.rgroup-n01607294.location
}

output "virtual_network_name" {
  value = module.network-n01607294.vnet_name
}

output "subnet_name" {
  value = module.network-n01607294.subnet_name
}

output "subnet_id" {
  value = module.network-n01607294.subnet_id
}

output "log_analytics_workspace_name" {
  value = module.common-n01607294.log_analytics_workspace_name
}

output "recovery_services_vault_name" {
  value = module.common-n01607294.recovery_services_vault_name
}

output "storage_account_name" {
  value = module.common-n01607294.storage_account_name
}

output "storage_account-primary_blob_endpoint" {
  value = module.common-n01607294.storage_account-primary_blob_endpoint
}

output "datadisk_name" {
  value = module.datadisk-n01607294.datadisk_name
}

output "vmlinux-hostname" {
  value = module.vmlinux-n01607294.vmlinux
}

output "vmlinux-fqdn" {
  value = module.vmlinux-n01607294.vmlinux-fqdn
}

output "vmlinux-private-ip" {
  value = module.vmlinux-n01607294.vmlinux-private-ip
}

output "vmlinux-public-ip" {
  value = module.vmlinux-n01607294.vmlinux-public-ip
}

output "vmlinux-nic-ids" {
  value = module.vmlinux-n01607294.vmlinux-nic-ids
}

// Output the windows virtual machine hostname
output "vmwindows-hostname" {
  value = module.vmwindows-n01607294.windows
}

output "vmwindows-fqdn" {
  value = module.vmwindows-n01607294.windows_vm_fqdn
}

output "vmwindows-private-ip" {
  value = module.vmwindows-n01607294.windows_private_ip_address
}

output "vmwindows-public-ip" {
  value = module.vmwindows-n01607294.windows_public_ip_address
}

output "vmwindows-nic-ids" {
  value = module.vmwindows-n01607294.windows_nic_id
}

output "loadbalancer-public-ip" {
  value = module.loadbalancer-n01607294.loadbalancer-public-ip
}

output "loadbalancer-name" {
  value = module.loadbalancer-n01607294.loadbalancer-name
}

output "database_instance_name" {
  value = module.database-n01607294.database_instance_name
}
