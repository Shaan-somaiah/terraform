locals {
  vms = {

    nas = {
      vmid        = 2010
      node        = "pve-node1"
      clone_from  = 101 ##debian-large
      cpu         = 2
      memory      = 4096
      bridge      = "vmbr20"
      tags = [
        "terraform",
        "core"
      ]
      startup = {
        order      = 1
        up_delay   = 0
        down_delay = 0
      }
    },

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
      startup = {
        order      = 2
        up_delay   = 0
        down_delay = 0
      }
    },

  }
}
