variable "location" {
  description = "The Azure Region where the Resource Group should exist."
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "The Name which should be used for this Resource Group."
  type        = string
  default     = "rg-terraform-oidc-demo"
}