resource "azurerm_storage_account" "this" {
    name = var.name
  resource_group_name = var.resource_group_name
  location = var.location
  account_tier = var.account_tier
  account_replication_type = var.account_replication_type

  tags = var.tags
   
  allow_nested_items_to_be_public = false
  https_traffic_only_enabled = true
  min_tls_version = "TLS1_2"
  local_user_enabled = false

  blob_properties { 
    versioning_enabled = true
    
    delete_retention_policy { #how long files stay until they are deleted
        days = 30
    }

    container_delete_retention_policy { #how long containers stay until they are deleted
        days = 30
        }
    
    change_feed_enabled = true
  }
}

