
variable "location" {
  description = "The location for the resources"
  type        = string
}

variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "vnet_space" {
  description = "Address space for the Virtual Network"
}

variable "subnet1" {
  description = "Name of the first subnet"
  type        = string
}

variable "subnet2" {
  description = "Name of the 2nd subnet"
  type        = string
}

variable "subnet1_space" {
  description = "Address space for the Virtual Network"
}

variable "subnet2_space" {
  description = "Address space for the Virtual Network"
}

variable "nsg1" {
  description = "Name of the first Network Security Group"
  type        = string
}

variable "nsg2" {
  description = "Name of the first Network Security Group"
  type        = string
}

variable "networking_rg_name" {
  description = "The name of the Resource Group for networking"
  type        = string
}