  resource "azurerm_storage_container" "mcitstoragemay"  {
  name                                = "content"
  storage_account_id                  = azurerm_storage_account.mcitstoragemay.id
  container_access_type               = "private"
}
