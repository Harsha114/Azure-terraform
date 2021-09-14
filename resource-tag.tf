provider "azurerm" {
  features {}
}

resource "azurestack_resource_group" "test" {
  name     = "testResourceGroup1"
  location = "West US"

  tags = {
    environment = "Production"
  }
}