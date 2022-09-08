provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = true
    }
  }
}

data "azurerm_client_config" "current" {}

module "resource_group" {
    source = "../modules/rg"
        
}
module "cosmosdb_account" {
    source = "../modules/cos"
    depends_on = [module.resource_group]
    resource_group_name = module.resource_group.resource_group_name
}
module "key_vault" {
  source = "../modules/kv"
  depends_on = [
    data.azurerm_client_config.current
  ]
  resource_group_name = module.resource_group.resource_group_name
  
}  

  
