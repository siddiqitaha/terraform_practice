provider "azurerm" {
  features {}
	}

resource "azurerm_resource_group" "ResourcegroupMY" {
  name     = var.resourcegroup
  location = var.location
}

resource "azurerm_virtual_network" "Vnet12" {
  name                = var.Vnet-Hub-Azure
  address_space       = ["10.0.0.0/22"]
  location            = azurerm_resource_group.ResourcegroupMY.location
  resource_group_name = azurerm_resource_group.ResourcegroupMY.name
}

resource "azurerm_subnet" "Subnet1" {
  name                 = "Subnet1"
  resource_group_name  = azurerm_resource_group.ResourcegroupMY.name
  virtual_network_name = azurerm_virtual_network.Vnet12.name
  address_prefixes     = ["10.0.0.0/24"]

}

resource "azurerm_network_interface" "networkinter" {
  name                = "mynic"
  location            = azurerm_resource_group.ResourcegroupMY.location
  resource_group_name = azurerm_resource_group.ResourcegroupMY.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.Subnet1.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "VM-HUB" {
name                = var.vmname
  resource_group_name = azurerm_resource_group.ResourcegroupMY.name
  location            = azurerm_resource_group.ResourcegroupMY.location
  size                = var.vmsizing
  admin_username      = var.admin_username
  admin_password      = var.VM_Password
  network_interface_ids = [
    azurerm_network_interface.networkinter.id,
  
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}
