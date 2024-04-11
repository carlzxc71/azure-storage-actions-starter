resource "azapi_resource" "this" {
  type                      = "Microsoft.StorageActions/storageTasks@2023-01-01"
  name                      = "mystoragetask"
  parent_id                 = azurerm_resource_group.this.id
  schema_validation_enabled = false

  body = jsonencode({
    location = azurerm_resource_group.this.location
    properties = {
      enabled     = true,
      description = "Storage task",
      action = {
        if = {
          condition = "[[endsWith(Name, '.xlsx')]]",
          operations = [
            {
              name = "SetBlobTier",
              parameters = {
                tier = "Cool"
              },
              onSuccess = "continue",
              onFailure = "break"
            },
            {
              name = "SetBlobTags",
              parameters = {
                TierUpdatedBy = "StorageTask"
              },
              onSuccess = "continue",
              onFailure = "break"
            }
          ]
        }
      },
    }
    identity = {
      type = "SystemAssigned"
    }
  })
}
