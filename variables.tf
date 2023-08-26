variable "terraform_aks_rg_name" {
    type = string
    description = "Name of the resource group"
}

variable "terraform_aks_rg_location" {
  type = string
  description = "Location of the resource group"
}

variable "terraform_aks_name" {
  type = string
  description = "Name of AKS cluster"
}

variable "terraform_aks_dns_prefix" {
  type = string
  description = "DNS of AKS"
}

variable "terraform_aks_node_size" {
  type = string
  description = "Size of each node in AKS cluster"
}