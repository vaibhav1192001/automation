
module "resource_group" {
  source             = "./modules/resource_group"
  networking_rg_name = "rg"
  linux_rg_name      = "Linux_rg"
  windows_rg_name    = "Windows_rg"
  location           = "canadacentral"
}

module "network" {
  source             = "./modules/network"
  vnet_name          = "vnet_lab"
  vnet_space         = ["10.0.0.0/16"]
  subnet1            = "subnet1"
  subnet1_space      = ["10.0.0.0/24"]
  subnet2            = "subnet2"
  subnet2_space      = ["10.0.1.0/24"]
  nsg1               = "nsg1"
  nsg2               = "nsg2"
  location           = "canadacentral"
  networking_rg_name = "rg"
}

module "linux" {
  source         = "./modules/linux"
  linux_avs      = "linux_avs"
  linux_rg       = "linux_rg"
  linux_vm1      = "n01657870-c-vm1"
  linux_vm2      = "n01657870-c-vm2"
  nb_count       = 2
  vm_size        = "Standard_B1s"
  admin_username = "n01657870"
  private_key    = file("~/.ssh/id_rsa")
  location       = "canadacentral"
  subnet1_id     = module.network.subnet1_id
}


module "windows" {
  source         = "./modules/windows"
  windows_rg     = "Windows_rg"
  windows_vm1    = "n01657870-w-vm1"
  vm_size        = "Standard_B1s"
  admin_username = "n01657870"
  admin_password = "my_passWD@"
  location       = "canadacentral"
  subnet2_id     = module.network.subnet2_id
  windows_avs    = "windows_availability_set"
}
