terraform {
  backend "azurerm" {
    resource_group_name  = "demo-rg-01"
    storage_account_name  = "stgac01"
    container_name        = "stgaccr01"
    key                   = "vnet.tfstate"
    tenant_id            = "81c3b323-8a08-4730-b416-9066c1bea520"
    subscription_id      = "dc70695c-b344-48c0-b8c4-02b002f254ce"
  }
}