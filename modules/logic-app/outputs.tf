output "logic_app_id" {
  description = "ID of the created Logic App"
  value       = azurerm_logic_app_workflow.this.id
}

output "logic_app_name" {
  description = "Name of the logic app"
  value       = azurerm_logic_app_workflow.this.name
}
output "principal_id" {
  description = "Principal ID of the Logic App managed identity"
  value       = azurerm_logic_app_workflow.this.identity[0].principal_id
}