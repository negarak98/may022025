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

resource "azurerm_resource_group" "subnet1" {
  for_each = toset(local.rg_names)

  name     = each.value
  location = "eastus"  # You can change this to any Azure region
}


locals {
  keys   = ["env", "team", "owner"]
  values = ["prod", "devops", "alice"]

  combined_map = {
    for i in [0,1,2] :
    local.keys[i] => local.values[i]
  }
}


resource "azurerm_resource_group" "negarak1" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_virtual_network" "negarak1" {
  name                = "example-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.negarak1.location
  resource_group_name = azurerm_resource_group.negarak1.name
}




resource "azurerm_subnet" "negarak1" {
  for_each = { for index, cidr in local.cidrs : "subnet-${index + 1}" => cidr }

  name                 = each.key
  resource_group_name  = azurerm_resource_group.negarak1.name
  virtual_network_name = azurerm_virtual_network.negarak1.name
  address_prefixes     = [each.value]

  delegation {
    name = "delegation"

    service_delegation {
      name    = "Microsoft.ContainerInstance/containerGroups"
      actions = [
        "Microsoft.Network/virtualNetworks/subnets/join/action",
        "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"
      ]
    }
  }
}

resource "azurerm_resource_group" "negarak22" {
  name     = "negarak22-resources"
  location = "West Europe"
}


resource "azurerm_virtual_network" "networks" {
  name                = "negarak22-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.enegarak22.location
  resource_group_name = azurerm_resource_group.negarak22.name
}




resource "azurerm_subnet" "subnets" {
  for_each = local.subnets

  name                 = each.key
  address_prefixes     = [each.value]
  resource_group_name  = azurerm_resource_group.negarak22.name
  virtual_network_name = azurerm_virtual_network.negarak22.name
}





