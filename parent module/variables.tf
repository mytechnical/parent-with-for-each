variable "resource_group" {
  type = map(object({
    resource_group_name     = string
    resource_group_location = string
  }))
}


variable "Vnets" {
  description = "Map of virtual networks"
  type = map(object({
    virtual_network_name     = string
    virtual_network_location = string
    resource_group_name      = string
    address_space            = list(string)
  }))
}

terrafor.tfvars bhia add ker rha taki check ho bcz tfvars git add nhi ho rha ha
resource_group = {
  RG1 = {
    resource_group_name     = "swinrg05"
    resource_group_location = "west europe"
  }
  RG2 = {
    resource_group_name     = "swinrg06"
    resource_group_location = "central india"
  }
}

Vnets = {
  vnet1 = {
    virtual_network_name     = "vnet01"
    virtual_network_location = "west europe"
    resource_group_name      = "swinrg05"
    address_space            = ["10.0.0.0/16"]
  }
  vnet2 = {
    virtual_network_name     = "vnet02"
    virtual_network_location = "central india"
    resource_group_name      = "swinrg06"
    address_space            = ["10.0.0.1/24"]
  }
}






