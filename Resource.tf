resource "azurerm_resource_group" "negarresource"{
  name  = "negarresource"
  location="canadacentral"
  }


resource "azurerm_service_plan" "mcitdevrm" {
  for_each            ={for sp in local.windows_app_list: "${sp.name}"=>sp }
  name                = each.value.name
  resource_group_name = azurerm_resource_group.negarresource.name
  location            = azurerm_resource_group.negarresource.location
  os_type             = each.value.os_type
  sku_name            = each.value.sku_name
}

resource "azurerm_windows_web_app" "mcitdevrm" {
  for_each            = azurerm_service_plan.mcitdevrm
  name                = each.value.name
  resource_group_name = azurerm_resource_group.negarresource.name
  location            = azurerm_resource_group.negarresource.location
  service_plan_id     = each.value.id

  site_config {}
}
