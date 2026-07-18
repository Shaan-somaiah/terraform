locals {
  vms = {
    test = {
      vmid      = 1010
      node      = "pve-node1"

      clone_from = 100 ##debian-small

      cpu        = 1
      memory     = 2048

      bridge     = "vmbr50"

      tags = [
        "terraform",
        "test"
      ]
    }
  }
}
