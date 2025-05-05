recource "azurerm_storage_account" "mcitstoragemay" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_recource_group.may022025.name
  location                 = azurerm_resource_group.may022025.location
  account_tier             = "standard"
  account_kind             ="files storage"
  account_replication_type = "LRS"

  tags = {
      enviromont = "dev"
  }
}
