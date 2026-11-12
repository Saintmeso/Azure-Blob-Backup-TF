#the variables.tf declares the inputs that the module accepts and the correct data types.
variable "name" {
    description = "Name of the Azure Resource Group"
    type = string
}

variable "location" {
    description = "Azure region where the Resource Group will be deployed"
    type = string
}

variable "tags" {
    description = "Tags assigned to the Resource Group"
    type = map(string)
    default = {} 
}
