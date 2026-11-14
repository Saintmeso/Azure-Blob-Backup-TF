output "container_names" {
  description = "Names of all created containers"
  value = [
    for container in azurerm_storage_container.this : container.name
  ]
}

output "container_ids" {
  description = "Map of containers names to their azure resource id"
  value = {
    for name, container in azurerm_storage_container.this :
    name => container.id
  }
}

#I used a list for container names because they are a chosen string value, you pick the name of the container
#I used a map for container id's because id's are variables that are given AFTER the containers are made so they must be NAMED and created before they can recieve an ID.
