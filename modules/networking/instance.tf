# Instance - VM
resource "google_compute_instance" "gcp_instance" {
  name          = var.name_prefix
  machine_type  = "f1-micro"
  zone          = var.zone
  boot_disk {
    initialize_params {
      image = "centos-7-v20180129"
    }
  }
  network_interface {
    subnetwork  = google_compute_subnetwork.vpc_subnetwork_public.self_link
    access_config {
      // Ephemeral IP
    }
  }
  metadata = {
    ssh-keys = "${var.ssh_username}:${file(var.public_key)}"
  }
  tags = ["network-ssh-firewall"]
}

resource "google_compute_firewall" "network_ssh_firewall" {
  name    = "network-ssh-firewall"
  network = google_compute_network.vpc.self_link
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["network-ssh-firewall"]
}

