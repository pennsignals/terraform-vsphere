variable "bootstrap_expect" {
  default     = 3
  description = "Number of expected servers in the data center"
}

variable "server" {
  description = "Control if an agent is in server or client mode"
}

variable "datastore_id" {
  description = "Managed object reference ID of the virtual machine's data store"
}

variable "network_id" {
  description = "Managed object reference ID of the network to connect this interface to"
}

variable "resource_pool_id" {
  description = "Managed object reference ID of the resource pool to put this virtual machine in"
}
