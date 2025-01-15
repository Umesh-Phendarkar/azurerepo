terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~>4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

terraform {
  cloud {

    organization = "feb2025"

    workspaces {
      name = "azureworkspace"
    }
  }
}


resource "azurerm_resource_group" "rg04" {
  location = "Central India"
  name     = "rg04"
}

