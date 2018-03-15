provider "vsphere" {
  allow_unverified_ssl = "${var.allow_unverified_ssl}"
  password             = "${var.password}"
  user                 = "${var.user}"
  vsphere_server       = "${var.vsphere_server}"
}
