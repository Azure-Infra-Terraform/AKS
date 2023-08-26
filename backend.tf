terraform {
    backend "azurerm" {
    resource_group_name   = "terraformAKS"   # Replace with your resource group name
    storage_account_name  = "terraformaksprovision" # Replace with your storage account name
    container_name        = "terraformakscont"      # Replace with the container name
    key                   = "statekey"
  } 
}
