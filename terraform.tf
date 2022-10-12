terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.8.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "c4fd8677-9868-4f21-b253-e904e89ac368"
  tenant_id = "f9c4531e-1090-4796-9a5c-fedfbc27f7a7"
  client_id = "de91822a-e81a-4b0d-b88c-a74b54fe8bcc"
  client_secret = "G4M8Q~x5yFB3b6IWngZsWpzSvk2~nfuUxdxlFbXT"
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rgs"
  location = "North Europe"
}

resource "azurerm_storage_account" "sts" {
  name                     = "storages33"
  resource_group_name      = "rgs"
  location                 = "North Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind = "StorageV2"
}
