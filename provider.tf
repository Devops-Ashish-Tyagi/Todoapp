terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
}
provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "5434828b-4299-46cb-9433-bee373d4ad6b"
}