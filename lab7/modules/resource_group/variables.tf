variable "networking_rg_name" {
  description = "The name of the Networking Resource Group"
  type        = string
}

variable "linux_rg_name" {
  description = "The name of the Linux Resource Group"
  type        = string
}

variable "windows_rg_name" {
  description = "The name of the Windows Resource Group"
  type        = string
}

variable "location" {
  description = "The location for all resource groups"
  type        = string
}
