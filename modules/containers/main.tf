resource "azurerm_storage_container" "this" {
  for_each           = var.container_names
  name               = each.key
  storage_account_id = var.storage_account_id
}