resource "azurerm_resource_group" "this" {
  name     = "rg-demo-storageactions"
  location = "France Central"

  tags = {
    environment = "Demo for Azure Storage Actions"
  }
}

resource "azurerm_storage_account" "this" {
  name                     = "stdemostorageactions"
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "Demo for Azure Storage Actions"
  }
}

resource "azurerm_storage_container" "this" {
  name                  = "container-storageactions"
  storage_account_name  = azurerm_storage_account.this.name
  container_access_type = "private"
}
