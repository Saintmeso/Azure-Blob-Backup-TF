resource "azurerm_logic_app_workflow" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags


  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_role_assignment" "blob_reader" {
  scope                = var.storage_account_id
  role_definition_name = "Storage Blob Data Reader"
  principal_id         = azurerm_logic_app_workflow.this.identity[0].principal_id
}