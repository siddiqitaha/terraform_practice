output "resource_group_id" {
  value = azurerm_resource_group.ResourcegroupMY.id
}

output "azurerm_windows_virtual_machine" {
  value = azurerm_windows_virtual_machine.VM-main[0].name
}