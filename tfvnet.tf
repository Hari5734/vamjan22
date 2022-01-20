
# Creating Vnet 
  
resource "azurerm_virtual_network"  "vnet1" {
name  = "tfvnet1"
location = azurerm_resource_group.rg1.location
resource_group_name= azurerm_resource_group.rg1.name
address_space = ["10.0.0.0/16"]
dns_servers   = ["10.0.0.4", "10.0.0.5"]

 tags = {
    environment = "Test"
    
 }
}
# Crating Subnets

resource "azurerm_subnet" "bastion" {
  name                 = "tfbastion1-subnet"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_subnet" "app" {
  name                 = "tfapp1-subnet"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_subnet" "web" {
  name                 = "tfweb1-subnet"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.0.3.0/24"]
}


