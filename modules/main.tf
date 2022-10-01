provider "google" {
  credentials    = file("${var.CREDENTIALS}")
  project        = var.project_id
}

module "networking" {
  source        = "./networking"
  project_id    = var.project_id
  name_prefix   = var.name_prefix
  region        = var.region
  public_key    = var.public_key
  ssh_username  = var.ssh_username
}