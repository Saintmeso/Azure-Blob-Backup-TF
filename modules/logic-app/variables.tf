variable "name" {
  description = "Name of the logic app"
  type        = string
}

variable "location" {
  description = "Location of the logic app"
  type        = string
}

variable "resource_group_name" {
  description = "name of the resource group"
  type        = string

}

variable "tags" {
  description = "Tags assigned to the logic app"
  type        = map(string)
  default     = {}
}
 