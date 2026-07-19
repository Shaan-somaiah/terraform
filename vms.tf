locals {
  vms = {

    dns-node2 = {
      vmid        = 107
      node        = "pve-node1"
      clone_from  = 100 ##debian-13-small
      cpu         = 1
      memory      = 2048
      bridge      = "vmbr10"
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

    nas = {
      vmid        = 2010
      node        = "pve-node1"
      clone_from  = 101 ##debian-13-large
      cpu         = 2
      memory      = 8192
      bridge      = "vmbr20"
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

    pbs = {
      vmid        = 1012
      node        = "pve-node1"
      clone_from  = 103 ##pbs
      cpu         = 2
      memory      = 4096
      bridge      = "vmbr10"
      tags = [
        "terraform",
        "pbs",
        "core"
      ]
      startup = {
        order      = 3
        up_delay   = 25
        down_delay = 0
      }
    },

    k8s-master = {
      vmid        = 3050
      node        = "pve-node1"
      clone_from  = 102 ## debian-12-small
      cpu         = 2
      memory      = 4096
      bridge      = "vmbr30"
      tags = [
        "terraform",
        "k8s"
      ]
      startup = {
        order      = 4
        up_delay   = 25
        down_delay = 0
      }
    },

    k8s-node1 = {
      vmid        = 3051
      node        = "pve-node1"
      clone_from  = 102
      cpu         = 2
      memory      = 4096
      bridge      = "vmbr30"
      tags = [
        "terraform",
        "k8s"
      ]
      startup = {
        order      = 5
        up_delay   = 25
        down_delay = 0
      }
    },

    k8s-node2 = {
      vmid        = 3052
      node        = "pve-node1"
      clone_from  = 102
      cpu         = 2
      memory      = 4096
      bridge      = "vmbr30"
      tags = [
        "terraform",
        "k8s"
      ]
      startup = {
        order      = 6
        up_delay   = 25
        down_delay = 0
      }
    },

  }
}
