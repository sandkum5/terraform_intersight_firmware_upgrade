# Intersight Access API Key
variable "api_key" {
  type        = string
  description = "Intersight API key"
}
variable "secret_key" {
  type        = string
  description = "Intersight Secret Key file"
  default     = "SecretKey.txt"
}
variable "endpoint" {
  type        = string
  description = "Intersight URL"
  default     = "https://intersight.com"
}

# firmware_distributable 
variable "firmware_iso_name" {
  type        = string
  description = "Firmware ISO Name"
}
variable "firmware_iso_description" {
  type        = string
  description = ""
  default     = "Firmware ISO Description"
}
variable "firmware_supported_models" {
  type        = list(string)
  description = "Firmware ISO Supported Models"
}
variable "firmware_iso_version" {
  type        = string
  description = "Firmware ISO Version"
}

variable "repo_source_os_iso_path" {
  type        = string
  description = "value"
}
variable "repo_source_user" {
  type        = string
  description = "value"
}
variable "repo_source_password" {
  type        = string
  description = "value"
}
/*
# CIFS 
variable "repo_source_os_iso_path" {
  type = string 
  description = "value"
}
variable "repo_source_cifs_mount_options" {
  type = string 
  description = "value"
}
variable "repo_source_user" {
  type = string 
  description = "value"
}
variable "repo_source_password" {
  type = string 
  description = "value"
}
# NFS 
variable "repo_source_os_iso_path" {
  type = string 
  description = "value"
}
variable "repo_source_nfs_mount_options" {
  type = string 
  description = "value"
}
*/

# firmware_upgrade 
variable "firmware_map_type" {
  type        = string
  description = "File server protocols such as CIFS, NFS, WWW for HTTP (S) that hosts the image.* nfs - File server protocol used is NFS.* cifs - File server protocol used is CIFS.* www - File server protocol used is WWW."
}
variable "firmware_upgrade_option" {
  type        = string
  description = "# Option to control the upgrade operation. Some examples, 1) nw_upgrade_mount_only - mount the image from a file server and run the upgrade on the next server boot and 2) nw_upgrade_full - mount the image and immediately run the upgrade.* nw_upgrade_full - Network upgrade option for full upgrade.* nw_upgrade_mount_only - Network upgrade mount only."
  default     = "nw_upgrade_full"
}
variable "firmware_upgrade_type" {
  type        = string
  description = "Desired upgrade mode to choose either direct download based upgrade or network share upgrade.* direct_upgrade - Upgrade mode is direct download.* network_upgrade - Upgrade mode is network upgrade."
  default     = "network_upgrade" # Options: direct_upgrade, network_upgrade 
}
variable "server_serial" {
  type        = string
  description = "Server serial which needs to be upgraded"
}
