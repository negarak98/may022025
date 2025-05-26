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




locals {
  # Original list of region names
  names = ["eastus", "westeurope", "centralindia"]

  # Transformed list: all names in uppercase
  upper_names = [for name in local.names : upper(name)]
}

resource "azurerm_resource_group" "example" {
  for_each = toset(local.rg_names)

  name     = each.value
  location = "eastus"  # You can change this to any Azure region
}
