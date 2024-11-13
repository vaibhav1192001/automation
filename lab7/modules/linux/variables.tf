variable "nb_count" {
  type = number
}

variable "linux_rg" {
  description = "Resource group name for Linux VMs"
  type        = string
}

variable "linux_vm1" {
  description = "Name for Linux VM 1"
  type        = string
}

variable "linux_vm2" {
  description = "Name for Linux VM 2"
  type        = string
}

variable "vm_size" {
  description = "Size of the Linux VMs"
  type        = string
  default     = "Standard_DS1_v2"
}

variable "admin_username" {
  description = "Admin username for the Linux VMs"
  type        = string
}


variable "public_key" {
  description = "Path to the SSH public key"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "private_key" {
  description = "Path to the SSH private key"
  type        = string
  default     = "~/.ssh/id_rsa"
}

variable "location" {
  description = "Location for all resources"
  type        = string
}

variable "linux_avs" {
  description = "Name for the availability set"
  type        = string
}

variable "subnet1_id" {
  description = "ID of the first subnet."
  type        = string
}


variable "os_disk" {
  description = "The OS disk configuration for the Linux virtual machine"
  type = object({
    storage_account_type = string,
    disk_size_gb         = number,
    caching              = string
  })
  default = {
    storage_account_type = "Premium_LRS"
    disk_size_gb         = 32
    caching              = "ReadWrite"
  }
}
variable "source_image_reference" {
  description = "The OS image configuration for the Linux virtual machine"
  type = object({
    linux_publisher = string,
    linux_offer     = string,
    linux_sku       = string,
    linux_version   = string
  })
  default = {
    linux_offer     = "CentOS"
    linux_publisher = "OpenLogic"
    linux_sku       = "8_2"
    linux_version   = "latest"
  }
}
variable "nsg1" {
  default = "network-nsg1"
}

variable "nsg2" {
  default = "network-nsg2"
}
