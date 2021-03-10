resource "intersight_firmware_upgrade" "firmware_upgrade" {
  distributable {
    moid = intersight_firmware_distributable.firmware_iso.moid
  }
  network_share {
    map_type      = var.firmware_map_type
    upgradeoption = var.firmware_upgrade_option
  }
  server {
    object_type = "compute.RackUnit"
    selector    = var.server_serial
  }
  upgrade_type = var.firmware_upgrade_type
}
