terraform {
  required_version = ">= 0.11.3"
}

provider "vsphere" {
  // Provider options
  allow_unverified_ssl = "${var.allow_unverified_ssl}"
  password             = "${var.password}"
  user                 = "${var.user}"
  vsphere_server       = "${var.vsphere_server}"

  // Debugging options
  client_debug      = "${var.client_debug}"
  client_debug_path = "${var.client_debug_path}"
}
