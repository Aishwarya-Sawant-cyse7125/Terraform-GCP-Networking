# Public Subnetwork
resource "google_compute_subnetwork" "vpc_subnetwork_public" {
  name          = "${var.name_prefix}-subnetwork-public"
  region        = var.region
  network       = google_compute_network.vpc.self_link
  ip_cidr_range = cidrsubnet(var.cidr_block, var.cidr_subnetwork_width_delta, 0)
}