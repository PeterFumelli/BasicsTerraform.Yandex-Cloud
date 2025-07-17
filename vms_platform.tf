variable "vms_resources" {
  description = "Resources configuration for VMs"
  type = map(object({
    name          = string
    platform_id   = string
    cores         = number
    memory        = number
    core_fraction = number
    preemptible   = bool
    image_family  = string
    zone          = string
    hdd_size      = number
    hdd_type      = string
  }))
  default = {
    web = {
      name          = "netology-develop-platform-web"
      platform_id   = "standard-v3"
      cores         = 2
      memory        = 4
      core_fraction = 100
      preemptible   = true
      image_family  = "ubuntu-2004-lts"
      zone          = "ru-central1-a"
      hdd_size      = 20
      hdd_type      = "network-hdd"
    }
    db = {
      name          = "netology-develop-platform-db"
      platform_id   = "standard-v3"
      cores         = 2
      memory        = 4
      core_fraction = 100
      preemptible   = true
      image_family  = "ubuntu-2004-lts"
      zone          = "ru-central1-b"
      hdd_size      = 20
      hdd_type      = "network-hdd"
    }
  }
}

variable "vms_metadata" {
  description = "Metadata for VMs"
  type        = map(string)
  default = {
    ssh-keys = "your-ssh-public-key-here" # Replace with your own SSH keys
  }
}

# variable "vm_web_name" {
#   description = "Name of the web VM"
#   type        = string
#   default     = "netology-develop-platform-web"
# }

# variable "vm_web_platform_id" {
#   description = "Platform ID of the web VM"
#   type        = string
#   default     = "standard-v3"
# }

# variable "vm_web_preemptible" {
#   description = "Whether the web VM is preemptible"
#   type        = bool
#   default     = true
# }

# variable "vm_web_image_family" {
#   description = "Image family for the web VM"
#   type        = string
#   default     = "ubuntu-2004-lts"
# }

# variable "vm_web_zone" {
#   description = "Zone for the web VM"
#   type        = string
#   default     = "ru-central1-a"
# }

# ---- DB VM ----
# variable "vm_db_name" {
#   description = "Name of the db VM"
#   type        = string
#   default     = "netology-develop-platform-db"
# }

# variable "vm_db_platform_id" {
#   description = "Platform ID of the db VM"
#   type        = string
#   default     = "standard-v3"
# }

# variable "vm_db_preemptible" {
#   description = "Whether the db VM is preemptible"
#   type        = bool
#   default     = true
# }

# variable "vm_db_image_family" {
#   description = "Image family for the db VM"
#   type        = string
#   default     = "ubuntu-2004-lts"
# }

# variable "vm_db_zone" {
#   description = "Zone for the db VM"
#   type        = string
#   default     = "ru-central1-b"
# }