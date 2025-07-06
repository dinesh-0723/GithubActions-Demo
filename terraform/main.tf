provider "azurerm" {
  subscription_id = "dc70695c-b344-48c0-b8c4-02b002f254ce"
  tenant_id       = "81c3b323-8a08-4730-b416-9066c1bea520"   # Required for many scenarios
  features {}
}


resource "azurerm_resource_group" "rg" {
  name     = "github-rg"
  location = "East US"
}