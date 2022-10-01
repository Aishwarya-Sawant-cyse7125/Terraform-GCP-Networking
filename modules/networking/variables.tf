# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMS
# ---------------------------------------------------------------------------------------------------------------------
variable "region" {
  type    = string
  default = "us-east1"
}
variable "project_id" {
  type        = string
  description = "The project ID for the network"
  default = "project-tf-gcp"
}
variable "name_prefix" {
  type        = string
  default     = "gcp-instance"
  description = "A name prefix"
}
variable "public_key" {
  type    = string
  default = "~/.ssh/id_ed25519.pub"
}
variable "ssh_username" {
  type    = string
  default = ""
}
variable "zone" {
  description = "Zone"
  type        = string
  default = "us-east1-b"
}
# ---------------------------------------------------------------------------------------------------------------------
# NETWORKING PARAMS
# ---------------------------------------------------------------------------------------------------------------------
variable "cidr_block" {
  default     = "10.0.0.0/16"
  type        = string
  description = "The CIDR notation for the VPC's IP address range"
}
variable "cidr_subnetwork_width_delta" {
  type        = number
  default     = 4
  description = "Network and subnetwork difference"
}
variable "cidr_subnetwork_spacing" {
  description = "Subnetwork spacing"
  type        = number
  default     = 0
}