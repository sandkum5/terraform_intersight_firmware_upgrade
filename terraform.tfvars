# Intersight Access API Key
api_key    = "5bc128dd37636d3874c4c9ce/5bc1285d37636d3874c4bea2/5faf78397564612d30f1d999"
secret_key = "SecretKey.txt"
endpoint   = "https://intersight.com"

# Common
# Tags
tags = {
  key1   = "DC"
  value1 = "SJ"
  key2   = "ENV"
  value2 = "LAB"
}

firmware_iso_name         = "ucs-c240m5-huu-4.1.2b"
firmware_iso_description  = "UCS C-240M5 4.1.2b ISO"
firmware_supported_models = ["ucsc-c240-m5l", ]
firmware_iso_version      = "4.1.(2b)"

repo_source_os_iso_path = "https://172.16.15.222/software/cisco/ucs/c_series/4.1.2/ucs-c240m5-huu-4.1.2a.iso"
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

firmware_map_type                   = "www"                         #  Options: nfs, cifs, www 
server_serial                       = "$filter=Serial eq 'WZP2207092B'" # Replace xxxxx with actual serial number which needs to be upgraded 