module "resource_group1" {
  for_each                = var.resource_group
  source                  = "../child module/azurerm resource group"
  resource_group_name     = each.value.resource_group_name
  resource_group_location = each.value.resource_group_location
}
module "resource_group2" {
  for_each                = var.resource_group
  source                  = "../child module/azurerm resource group"
  resource_group_name     = each.value.resource_group_name
  resource_group_location = each.value.resource_group_location
}

module "virtual_network1" {
  for_each                 = var.Vnets
  depends_on               = [module.resource_group1]
  source                   = "../child module/virtual network"
  virtual_network_name     = each.value.virtual_network_name
  virtual_network_location = each.value.virtual_network_location
  resource_group_name      = each.value.resource_group_name
  address_space            = each.value.address_space
}

module "virtual_network2" {
  for_each                 = var.Vnets
  depends_on               = [module.resource_group2]
  source                   = "../child module/virtual network"
  virtual_network_name     = each.value.virtual_network_name
  virtual_network_location = each.value.virtual_network_location
  resource_group_name      = each.value.resource_group_name
  address_space            = each.value.address_space
}

add ker rha hoon tfvars bhi


