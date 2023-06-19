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
#_______________________________________________
variable "App-Service-RG-name" {
  type = string
  description = "Resource Group Name"
  default = "my_new_app_service_resource"
}

variable "service_plan_name" {
  type = string
  description = "My App Service Plan"
  default = "myserviceplan1232"

}

#_________________________________________
variable "My_service_name" {
  type = string
  description = "My Service app name"
  default = "myappaservicename1232"

}

variable "SKU_Tier" {
  type = string
  description = "SKU Tier"
  default = "Free"

}

variable "SKU_Size" {
  type = string
  description = "SKU Size"
  default = "F1"
}

variable "endpoint_name" {
  type = string
  description = "My Endpoint Name"
  default = "my_endpoint"
}

variable "endpoint" {
  type = string
  default = "10.0.0.0/24"
}

