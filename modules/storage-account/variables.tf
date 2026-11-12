variable "name" {
    description = "The name of the storage account"
    type = string
}

variable "resource_group_name" {
    description = "The name of the resource group"
    type = string
}

variable "location" {
    description = "The location of the storage account"
    type = string
}

variable "account_tier" {
    description = "The account tier of the Storage account"
    type = string
    default = "Standard"
}

variable "account_replication_type" {
    description = "The type of replication"
    type = string
    default = "LRS"
}

variable "tags" {
    description = "Tags assigned to the storage account"
    type = map(string)
    default = {}
}

