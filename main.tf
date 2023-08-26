resource "azurerm_resource_group" "terraform_aks_rg" {
  name     = var.terraform_aks_rg_name
  location = var.terraform_aks_rg_location
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.terraform_aks_name
  location            = azurerm_resource_group.terraform_aks_rg.location
  resource_group_name = azurerm_resource_group.terraform_aks_rg.name
  dns_prefix          = var.terraform_aks_dns_prefix

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = var.terraform_aks_node_size
  }

  identity {
    type = "SystemAssigned"
  }
}