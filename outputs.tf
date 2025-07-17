


output "instances_info" {
  description = "Name, external IP and FQDN for each instance"
  value = {
    web = {
      name        = yandex_compute_instance.platform.name
      external_ip = yandex_compute_instance.platform.network_interface[0].nat_ip_address
      fqdn        = yandex_compute_instance.platform.fqdn
    }
    db = {
      name        = yandex_compute_instance.db.name
      external_ip = yandex_compute_instance.db.network_interface[0].nat_ip_address
      fqdn        = yandex_compute_instance.db.fqdn
    }
  }
}