provider "azurerm" {
 # version = "=2.1.0"
  features {}
}

data "azurerm_resource_group" "RG1" {
  name     = var.rg_name
}

resource "azurerm_storage_account" "SA1" {
  name                     = var.sa_name
  resource_group_name      = data.azurerm_resource_group.RG1.name
  location                 = data.azurerm_resource_group.RG1.location
  account_tier             = var.sa_tier
  account_replication_type = var.sa_replication_type
}