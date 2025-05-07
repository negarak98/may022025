resource "azurerm_storage_account" "mcitstoragemay" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.terraformmay022025.name
  location                 = azurerm_resource_group.terraformmay022025.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = {
      enviromont = "dev"
  }
}
