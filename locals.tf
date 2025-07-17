locals {
  vm_web_name = "${var.vpc_name}-${var.vms_resources["web"].platform_id}-web"
  vm_db_name  = "${var.vpc_name}-${var.vms_resources["db"].platform_id}-db"
}