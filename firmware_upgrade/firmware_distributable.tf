# data "intersight_softwarerepository_catalog" "get_softwarerepo_catalog_moid" {
#   name = "user-catalog"
# }

resource "intersight_firmware_distributable" "firmware_iso" {
  name             = var.firmware_iso_name
  description      = var.firmware_iso_description
  supported_models = var.firmware_supported_models
  nr_version       = var.firmware_iso_version
  origin           = "User"
  nr_source {
    object_type = "softwarerepository.HttpServer"
    additional_properties = jsonencode({
      # HTTPS 
      "LocationLink" = var.repo_source_os_iso_path
      # Username     = var.repo_source_user
      # sPassword     = var.repo_source_password
      # CIFS 
      # FileLocation = var.repo_source_os_iso_path
      # MountOption  = var.repo_source_cifs_mount_options
      # Username     = var.repo_source_user
      # Password     = var.repo_source_password
      # NFS 
      # FileLocation = var.repo_source_os_iso_path
      # MountOptions = var.repo_source_nfs_mount_options
    })
  }
  # import_action = "None"
  # catalog {
  #   moid = data.intersight_softwarerepository_catalog.get_softwarerepo_catalog_moid.moid
  # }
  # file_location = var.repo_source_os_iso_path
  # import_state  = "ReadyForImport"
  # image_category   = "C-Series"
}
