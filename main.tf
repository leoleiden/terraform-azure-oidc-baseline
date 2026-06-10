terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "terra5"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    use_oidc             = true
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}

resource "azurerm_resource_group" "core_infrastructure" {
  name     = var.resource_group_name
  location = var.location
  tags = {
    Environment = "Security-Baseline"
    ManagedBy   = "Terraform-OIDC"
  }
}