resource "azurerm_resource_group" "modulerg" {
  name     = "${var.rgname}"
  location = "${var.rglocation}"
          tags = {
        technical_contact = "karthickeyan"
        contact = "karthick"
}
}

resource "azurerm_storage_account" "tfstate" {
  name                     = "${var.sgname}"
  resource_group_name      = "${var.rgnamestate}"
  location                 = "${var.rgstatelocation}"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "test"
  }
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "${var.sgcname}"
  storage_account_name  = "${var.sgname}"
  container_access_type = "private"
}