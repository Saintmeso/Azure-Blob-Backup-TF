output "name" {
  description = "Name of the created Storage Account"
  value       = azurerm_storage_account.this.name
}

output "location" {
    description = "Location of the Storage Account"
    value = azurerm_storage_account.this.location
}

output "id" {
    description = "Storage Account ID"
    value = azurerm_storage_account.this.id
}

output "primary_blob_endpoint" {
    description = "Primary blob endpoint"
    value = azurerm_storage_account.this.primary_blob_endpoint
}
