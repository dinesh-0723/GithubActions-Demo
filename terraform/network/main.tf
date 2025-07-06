provider "azurerm" {
  subscription_id = "dc70695c-b344-48c0-b8c4-02b002f254ce"
  tenant_id       = "81c3b323-8a08-4730-b416-9066c1bea520"   # Required for many scenarios
  features {}
}

data "azurerm_resource_group" "extrg" {
  name     = "demo-rg-01"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "demo-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = data.azurerm_resource_group.extrg.location
  resource_group_name = data.azurerm_resource_group.extrg.name
}