output "ip" {
   value = google_compute_instance.myTa4ka.network_interface.0.network_ip
}