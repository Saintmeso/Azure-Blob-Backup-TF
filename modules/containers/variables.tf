variable "container_names" {
  description = "Names of the Blob Storage containers"
  type        = set(string)
}

variable "storage_account_id" {
  description = "ID of the storag account where containers will be created"
  type        = string
}