locals {
  vms = {
    dns-node2 = {
      vmid        = 107
      node        = "pve-node1"

      clone_from  = 100 ##debian-small

      cpu         = 1
      memory      = 2048

      bridge      = "vmbr10"

      tags = [
        "terraform",
        "core"
      ]
    }
  }
}
