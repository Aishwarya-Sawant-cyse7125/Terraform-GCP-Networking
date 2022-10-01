#variables
# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# These variables are expected to be passed in by the operator except few
# ---------------------------------------------------------------------------------------------------------------------

variable "CREDENTIALS" {
  type   = string
}
variable "public_key" {
  type    = string
  default = "~/.ssh/id_ed25519.pub"
}
variable "ssh_username" {
  type    = string
  default = ""
}
variable "project_id" {
  type    = string
  default = "project-tf-gcp"
}
variable "region" {
  type        = string
  description = "Default region"
  default = "us-east1"
}
variable "name_prefix" {
  type        = string
  default = "gcp-instance"
  description = "A name prefix"
}

