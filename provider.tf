terraform {
  required_version = ">= 1.1.0"
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "2.9.5"
    }
  }
}

variable "PM_API_URL" {
  type = string
}

variable "PM_API_TOKEN_ID" {
  type = string
  sensitive = true
}

variable "PM_API_TOKEN_SECRET" {
  type = string
  sensitive = true
}

provider "proxmox" {
  pm_api_url = var.PM_API_URL
  pm_api_token_id = var.PM_API_TOKEN_ID
  pm_api_token_secret = var.PM_API_TOKEN_SECRET
  pm_tls_insecure = true
}