terraform {
  required_version = ">=1.3.7"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.41.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

terraform {
  cloud {

    organization = "feb2025"

    workspaces {
      name = "workspacecli"
    }
  }
}

resource "azurerm_resource_group" "rg04" {
  location = "Central India"
  name     = "rg04"
}

