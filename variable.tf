variable "rg_name" {
  description = "Name of storage account, if it contains illegal characters (,-_ etc) those will be truncated."
  default = "rg1"
}
variable "sa_name" {
  description = "Specifies the name of the storage account. Changing this forces a new resource to be created. This must be unique across the entire Azure service, not just within the resource group."
  default = "sa102042021"
}

variable "sa_tier" {
  description = "Defines the Tier to use for this storage account. Valid options are Standard and Premium."
  default = "Standard"
}
variable "sa_replication_type" {
  description = "Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS."
  default = "LRS"
}