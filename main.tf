#ci cd Pipeline way

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
terraform {
  backend "remote" {
    organization = "azureorg"

    workspaces {
      name = "cicdwork"
    }
  }
}

provider "azurerm" {
  features {}

  ARM_CLIENT_ID       = var.ARM_CLIENT_ID
  ARM_CLIENT_SECRET   = var.ARM_CLIENT_SECRET
  ARM_SUBSCRIPTION_ID = var.ARM_SUBSCRIPTION_ID
  ARM_TENANT_ID       = var.ARM_TENANT_ID
  TF_API_TOKEN        = var.TF_API_TOKEN
}

resource "azurerm_resource_group" "example1" {
  name     = var.resource_group_name
  location = var.resource_group_location
}
