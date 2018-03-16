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

data "vsphere_datacenter" "default" {
  name = "${var.vsphere_datacenter}"
}

data "vsphere_datastore" "default" {
  datacenter_id = "${data.vsphere_datacenter.default.id}"
  name          = "${var.vsphere_datastore}"
}

data "vsphere_network" "default" {
  datacenter_id = "${data.vsphere_datacenter.default.id}"
  name          = "${var.vsphere_network}"
}

data "vsphere_resource_pool" "default" {
  datacenter_id = "${data.vsphere_datacenter.default.id}"
  name          = "${var.vsphere_resource_pool}"
}

module "consul" {
  source = "./modules/consul"

  bootstrap_expect = "${var.bootstrap_expect}"
  server           = true

  datastore_id     = "${data.vsphere_datastore.default.id}"
  network_id       = "${data.vsphere_network.default.id}"
  resource_pool_id = "${data.vsphere_resource_pool.default.id}"
}
