variable "proxmox_api_url" {
  type = string
}

variable "proxmox_api_token" {
  type      = string
  sensitive = true
}

variable "mac_addresses" {
  type      = map(string)
  sensitive = true
}