provider "google" {
    //credentials = "${file("${var.cred}")}"
    project = "${var.projName}"
    region = "${var.regName}"
    zone = "${var.zoneName}"
    }

    resource "google_compute_instance" "myTa4ka" {
        name = "${var.vmName}"
        machine_type = "${var.vmType}"

        boot_disk {
            initialize_params {
                image = "${var.osType}"
            }
        }

    network_interface {
        network = "default"
        access_config {
            
        }
    }
}