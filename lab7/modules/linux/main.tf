
resource "azurerm_availability_set" "linux_avs" {
  name                = var.linux_avs
  resource_group_name = var.linux_rg
  location            = var.location
  managed             = true
}

# resource "random_string" "suffix_v1" {
#   length  = 4
#   special = false
#   upper   = false
# }

# resource "random_string" "suffix_v2" {
#   length  = 4
#   special = false
#   upper   = false
# }


resource "azurerm_public_ip" "linux_vm1_pip" {
  name                = "${var.linux_vm1}-pip"
  resource_group_name = var.linux_rg
  location            = var.location
  allocation_method   = "Static"
  domain_name_label = var.linux_vm1
}

resource "azurerm_public_ip" "linux_vm2_pip" {
  name                = "${var.linux_vm2}-pip"
  resource_group_name = var.linux_rg
  location            = var.location
  allocation_method   = "Static"
  domain_name_label = var.linux_vm2
}



resource "azurerm_network_interface" "linux_vm1_nic" {
  name                = "${var.linux_vm1}-nic"
  resource_group_name = var.linux_rg
  location            = var.location
  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet1_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.linux_vm1_pip.id
  }
}


resource "azurerm_network_interface" "linux_vm2_nic" {
  name                = "${var.linux_vm2}-nic"
  resource_group_name = var.linux_rg
  location            = var.location
  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet1_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.linux_vm2_pip.id
  }
}



resource "azurerm_linux_virtual_machine" "linux_vm1" {
  name                  = var.linux_vm1
  resource_group_name   = var.linux_rg
  location              = var.location
  size                  = var.vm_size
  availability_set_id   = azurerm_availability_set.linux_avs.id
  network_interface_ids = [azurerm_network_interface.linux_vm1_nic.id]
  admin_username        = var.admin_username


  lifecycle {
    ignore_changes = [
      tags
    ]
  }

  admin_ssh_key {
    username   = var.admin_username
    public_key = file(var.public_key)
  }

  os_disk {
    caching              = var.os_disk.caching
    storage_account_type = var.os_disk.storage_account_type
    disk_size_gb         = var.os_disk.disk_size_gb
  }
  source_image_reference {
    publisher = var.source_image_reference.linux_publisher
    offer     = var.source_image_reference.linux_offer
    sku       = var.source_image_reference.linux_sku
    version   = var.source_image_reference.linux_version
  }
}


resource "azurerm_linux_virtual_machine" "linux_vm2" {
  name                  = var.linux_vm2
  resource_group_name   = var.linux_rg
  location              = var.location
  size                  = var.vm_size
  availability_set_id   = azurerm_availability_set.linux_avs.id
  network_interface_ids = [azurerm_network_interface.linux_vm2_nic.id]
  admin_username        = var.admin_username


  lifecycle {
    ignore_changes = [
      tags
    ]
  }

  admin_ssh_key {
    username   = var.admin_username
    public_key = file(var.public_key)
  }

  os_disk {
    caching              = var.os_disk.caching
    storage_account_type = var.os_disk.storage_account_type
    disk_size_gb         = var.os_disk.disk_size_gb
  }
  source_image_reference {
    publisher = var.source_image_reference.linux_publisher
    offer     = var.source_image_reference.linux_offer
    sku       = var.source_image_reference.linux_sku
    version   = var.source_image_reference.linux_version
  }
}
