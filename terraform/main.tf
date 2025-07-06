provider "azurerm" {
  subscription_id = "dc70695c-b344-48c0-b8c4-02b002f254ce"
  tenant_id       = "81c3b323-8a08-4730-b416-9066c1bea520"   # Required for many scenarios
  features {}
}


resource "azurerm_resource_group" "rg" {
  name     = "githubactions-rg"
  location = "East US"
}

resource "azurerm_container_registry" "acr" {
  name                = "myuniqueregistryname"      # Must be globally unique and 5-50 alphanumeric characters
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Premium"                   # Options: Basic, Standard, Premium
  admin_enabled       = false                       # Set true to enable admin user (not recommended for production)
}