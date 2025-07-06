provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "github-rg"
  location = "East US"
}