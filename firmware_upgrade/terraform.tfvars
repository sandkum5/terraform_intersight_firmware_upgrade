# Intersight Access API Key
api_key    = "<your_api_key>"
secret_key = "SecretKey.txt"
endpoint   = "https://intersight.com"

# firmware_distributable
firmware_iso_name         = "ucs-c240m5-huu-4.1.2a"
firmware_iso_description  = "UCS C-240M5 4.1.2a ISO"
firmware_supported_models = ["ucsc-c240-m5l", ]
firmware_iso_version      = "4.1.(2a)"
repo_source_os_iso_path = "https://x.x.x.x/path/to/firmware/iso/ucs-c240m5-huu-4.1.2a.iso"
repo_source_user        = ""
repo_source_password    = ""
/*
# CIFS 
repo_source_os_iso_path = ""
repo_source_cifs_mount_options = ""
repo_source_user = ""
repo_source_password = ""
# NFS 
repo_source_os_iso_path = ""
repo_source_nfs_mount_options = ""
*/

# firmware_upgrade
firmware_map_type                   = "www"                         #  Options: nfs, cifs, www 
server_serial                       = "$filter=Serial eq 'xxxxx'"   # Replace xxxxx with actual serial number which needs to be upgraded 