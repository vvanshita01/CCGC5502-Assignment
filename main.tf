module "rgroup-n01607294" {
  source = "./modules/rgroup-n01607294"

   resource_group_name = var.resource_group_name
   location = var.location 

   common_tags = local.common_tags
}

module "network-n01607294" {
  source = "./modules/network-n01607294"
  
  resource_group_name = module.rgroup-n01607294.resource_group_name
  location = module.rgroup-n01607294.location
  
  vnet_name = var.vnet_name
  subnet_name = var.subnet_name
  nsg_name = var.nsg_name

  common_tags = local.common_tags
}

module "common-n01607294" {
  source = "./modules/common-n01607294"
  
  resource_group_name = module.rgroup-n01607294.resource_group_name
  location = module.rgroup-n01607294.location

  common_tags = local.common_tags
}

module "vmlinux-n01607294" {
  source = "./modules/vmlinux-n01607294"
  
  resource_group_name = module.rgroup-n01607294.resource_group_name
  location = module.rgroup-n01607294.location
  
  subnet_id =  module.network-n01607294.subnet_id
  storage_account_uri = module.common-n01607294.storage_account-primary_blob_endpoint
  
  common_tags = local.common_tags
}

module "vmwindows-n01607294" {
  source = "./modules/vmwindows-n01607294"
  
  resource_group_name = module.rgroup-n01607294.resource_group_name
  location = module.rgroup-n01607294.location
  
  subnet_id =  module.network-n01607294.subnet_id
  storage_account_uri = module.common-n01607294.storage_account-primary_blob_endpoint
  common_tags = local.common_tags
}

module "datadisk-n01607294" {
  source = "./modules/datadisk-n01607294"
  
  resource_group_name = module.rgroup-n01607294.resource_group_name
  location = module.rgroup-n01607294.location

  linux_vm_ids        = module.vmlinux-n01607294.vmlinux.ids 
  windows_vm_ids      = module.vmwindows-n01607294.windows.ids
  
  all_vm_ids = concat(module.vmlinux-n01607294.vmlinux.ids, module.vmwindows-n01607294.windows.ids) 
  common_tags = local.common_tags
}

module "loadbalancer-n01607294" {
  source              = "./modules/loadbalancer-n01607294"
  
  resource_group_name = module.rgroup-n01607294.resource_group_name
  location = module.rgroup-n01607294.location
 
  linux_vm_nic_ids           =module.vmlinux-n01607294.vmlinux-nic-ids
  linux_vm_name              = module.vmlinux-n01607294.vmlinux.hostnames
  common_tags = local.common_tags
}

module "database-n01607294" {
  source = "./modules/database-n01607294"
  
  resource_group_name          = module.rgroup-n01607294.resource_group_name
  location                     = module.rgroup-n01607294.location
  common_tags = local.common_tags
}
