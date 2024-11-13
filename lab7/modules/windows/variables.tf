variable "windows_rg" {
  description = "Resource group name for Windows VMs"
  type        = string
}

variable "windows_vm1" {
  description = "Name for Windows VM 1"
  type        = string
}


variable "vm_size" {
  description = "Size of the Windows VMs"
  type        = string
  default     = "Standard_DS1_v2"
}

variable "admin_username" {
  description = "Admin username for the Windows VMs"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the Windows VMs"
  type        = string
  sensitive   = true
}

variable "location" {
  description = "Location for all resources"
  type        = string
}

variable "subnet2_id" {
  description = "ID of the first subnet."
  type        = string
}


variable "os_disk" {
  description = "The OS disk configuration for the Windows virtual machine"
  type = object({
    storage_account_type = string,
    disk_size_gb         = number,
    caching              = string
  })
  default = {
    storage_account_type = "Premium_LRS"
    disk_size_gb         = 128
    caching              = "ReadWrite"
  }
}

variable "source_image_reference" {
  description = "The OS image configuration for the Windows virtual machine"
  type = object({
    windows_publisher = string,
    windows_offer     = string,
    windows_sku       = string,
    windows_version   = string
  })
  default = {
    windows_publisher = "MicrosoftWindowsServer"
    windows_offer     = "WindowsServer"
    windows_sku       = "2019-Datacenter"
    windows_version   = "latest"
  }
}

variable "windows_avs" {
  description = "Name for the availability set"
  type        = string
}
