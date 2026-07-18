terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "~> 0.82"
    }
  }
}

provider "proxmox" {
  endpoint = var.proxmox_api_url
  username = var.proxmox_api_id
  password = var.proxmox_api_secret
  insecure = true
}