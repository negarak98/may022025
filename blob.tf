resource "azurerm_storage_blob" "mcitstoragemay" {
  name                          = "my-awesome-content.zip"
  storage_account_name          = azurerm_storage_account.mcitstoragemay.name  
  storage_container_name        = azurerm_storage_container.mcitstoragemay.name
  type                           = "Block"
  }
