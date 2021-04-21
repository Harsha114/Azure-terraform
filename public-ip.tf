resource "azurerm_resource_group" "example1" {
  name     = "example1-resources"
  location = "West Europe"
}

resource "azurerm_public_ip" "example1" {
  name                = "acceptanceTestPublicIp1"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}
