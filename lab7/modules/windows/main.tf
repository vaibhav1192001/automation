resource "azurerm_availability_set" "windows_avs" {
  name                = var.windows_avs
  resource_group_name = var.windows_rg
  location            = var.location
  managed             = true
}

# resource "random_string" "suffix" {
#   length  = 4
#   special = false
#   upper   = false
# }

resource "azurerm_public_ip" "windows_vm1_pip" {
  name                = "${var.windows_vm1}-pip"
  resource_group_name = var.windows_rg
  location            = var.location
  allocation_method   = "Static"
  domain_name_label = var.windows_vm1
}

resource "azurerm_network_interface" "windows_vm1_nic" {
  name                = "${var.windows_vm1}-nic"
  resource_group_name = var.windows_rg
  location            = var.location
  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet2_id 
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.windows_vm1_pip.id
  }
}

resource "azurerm_windows_virtual_machine" "windows_vm1" {
  name                  = var.windows_vm1
  resource_group_name   = var.windows_rg
  location              = var.location
  size                  = var.vm_size
  availability_set_id   = azurerm_availability_set.windows_avs.id
  network_interface_ids = [azurerm_network_interface.windows_vm1_nic.id]
  admin_username        = var.admin_username
  admin_password        = var.admin_password

  os_disk {
    caching              = var.os_disk.caching
    storage_account_type = var.os_disk.storage_account_type
    disk_size_gb         = var.os_disk.disk_size_gb
  }

  source_image_reference {
    publisher = var.source_image_reference.windows_publisher
    offer     = var.source_image_reference.windows_offer
    sku       = var.source_image_reference.windows_sku
    version   = var.source_image_reference.windows_version
  }
}
