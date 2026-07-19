resource "proxmox_virtual_environment_vm" "vm" {
  for_each = local.vms

  name = each.key
  node_name = each.value.node
  vm_id = each.value.vmid
  tags = each.value.tags

  started = true

  clone {
    vm_id = each.value.clone_from
  }

  cpu {
    cores = each.value.cpu
    type  = "host"
  }

  memory {
    dedicated = each.value.memory
  }

  network_device {
    bridge = each.value.bridge
    model = "virtio"
    mac_address = var.mac_addresses[each.key]
  }

  startup {
    order      = each.value.startup.order
    up_delay   = each.value.startup.up_delay
    down_delay = each.value.startup.down_delay
  }

  dynamic "hostpci" {
    for_each = try(each.value.hostpci, [])

    content {
      device  = hostpci.value.device
      id      = hostpci.value.id
      rombar  = hostpci.value.rombar
      xvga    = hostpci.value.xvga
    }
  }

}
