#This exposes the RG's name, ID and location for all other modules to be able to reference
output "resource_group_name" {
  description = "Name of the created Resource Group"
  value       = azurerm_resource_group.this.name
}

output "resource_group_id" {
  description = "ID of the created Resource Group"
  value       = azurerm_resource_group.this.id
}

output "resource_group_location" {
  description = "Location of the created Resource Groups"
  value       = azurerm_resource_group.this.location
}
