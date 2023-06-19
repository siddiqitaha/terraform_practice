# Reosurce Group & Location Specification
variable "resourcegroup" {
  type = string
  description = "Resource Group Name"
  default = "myProjectRgTaha"
}
variable "location" {
  type = string
  description = "My Resource Location"
  default = "East US"
}


# Virtual Network Specificaitons (Name, Address)
variable "Vnet-Hub-Azure" {
  type = string
  description = "Name for Virtual Network Hub"
  default = "AZ-vnet-hub-main"
}


# Virtual Machine (Name, Size, Admin_Username, Admin_Password)
variable "vmname" {
  type = string
  description = "My Virtual Machine Name"
  default = "myVMmachine"
}
variable "vmsizing" {
  type = string
  description = "Virtual Machin Size"
  default = "Standard_B1ls"
}
variable "admin_username" {
  type = string
  description = "Vm Login USername"
  default = "UsernameRoot"
}
variable "VM_Password" {
  type = string
  description = "My VM Password"
  default = "Password_123123@321!"
}

locals {
  tags = {
    name = "Taha Siddiqi"
    organization = "Al-Mannai"
    CreatedOn = "18/06/2023"
  }
}