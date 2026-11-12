resource "azurerm_resource_group" "this" {
  name     = var.name
  location = var.location

  tags = var.tags
}
#this uses the inputs provided by the verified by the variables.tf after checking it from main.tf to then define it for the actualy azure resource group.action 

  
