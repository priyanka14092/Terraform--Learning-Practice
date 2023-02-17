resource "random_pet" "rg_name" {
  prefix = var.resource_group_name_prefix
}

resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = random_pet.rg_name.id
  tags = {
    "client" = "ceq-internal"
    "applicationName" = "learning and testing"
    "owner" = "priyanka@cloudeq.com"
  }
}