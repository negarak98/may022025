resource "azurerm_resource_group" "azureresourcegroup"{
  name  = "mcit_resource_group_may022025"
  location="canadacentral"
  }


resource "azurerm_service_plan" "azureresourcegroup" {
  for_each            ={for sp in local.linux_app_list: "${sp.name}"=>sp }
  name                = each.value.name
  resource_group_name = azurerm_resource_group.azureresourcegroup.name
  location            = azurerm_resource_group.azureresourcegroup.location
  os_type             = each.value.os_type
  sku_name            = each.value.sku_name
}

resource "azurerm_linux_web_app" "azureresourcegroupwebapp" {
  for_each            = azurerm_service_plan.azureresourcegroup
  name                = each.value.name
  resource_group_name = azurerm_resource_group.azureresourcegroup.name
  location            = azurerm_resource_group.azureresourcegroup.location
  service_plan_id     = each.value.id

  site_config {}
}
