output "vsphere_datacenter" {
  value = "${data.vsphere_datacenter.default.id}"
}

output "vsphere_datastore" {
  value = "${data.vsphere_datastore.default.id}"
}

output "vsphere_network" {
  value = "${data.vsphere_network.default.id}"
}

output "vsphere_resource_pool" {
  value = "${data.vsphere_resource_pool.default.id}"
}
