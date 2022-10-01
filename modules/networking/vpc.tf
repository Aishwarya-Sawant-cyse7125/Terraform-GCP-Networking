
# VPC
resource "google_compute_network" "vpc" {
  name                      = "${var.name_prefix}-vpcnetwork"
  auto_create_subnetworks   = "false"
  routing_mode              = "REGIONAL"
}

# VPC Router
resource "google_compute_router" "vpc_router" {
  name    = "${var.name_prefix}-router"
  region  = var.region
  network = google_compute_network.vpc.self_link
}