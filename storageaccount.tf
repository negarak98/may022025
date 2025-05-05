resource "azurerm_storage_account" "mcitstoragemay" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.terraformmay022025.name
  location                 = azurerm_resource_group.terraformmay022025.location
  account_tier             = "standard"
  account_kind             ="standard"
  account_replication_type = "LRS"

  tags = {
      enviromont = "dev"
  }
}
