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






