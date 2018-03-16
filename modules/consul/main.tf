resource "vsphere_virtual_machine" "consul" {
  datastore_id = "${var.datastore_id}"
  name         = "consul-${var.server ? "server" : "client"}"

  network_interface {
    network_id = "${var.network_id}"
  }

  resource_pool_id = "${var.resource_pool_id}"

  count = "${var.bootstrap_expect}"
}
