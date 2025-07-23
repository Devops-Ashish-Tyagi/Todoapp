resource "azurerm_resource_group" "coltrg" {
  for_each = var.coltmaprg
  name     = each.key
  location = each.value
}
resource "azurerm_resource_group" "coltrg2" {
  name     = "coltrg101"
  location = "centralindia"
}

resource "azurerm_storage_account" "coltstg" {
  for_each                 = var.mapstg
  name                     = each.value.name
  resource_group_name      = each.value.RGname
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
depends_on = [ azurerm_resource_group.coltrg ]
}