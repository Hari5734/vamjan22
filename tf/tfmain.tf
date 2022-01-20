terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.92.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
features {}
}

# craeting resource manager

resource "azurerm_resource_group" "rg1" {
  name = "tfrg1"
  location = "eastus"
}
