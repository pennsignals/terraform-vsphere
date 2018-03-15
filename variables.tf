// Provider options

variable "allow_unverified_ssl" {
  default     = false
  description = "Disable SSL certificate verification"
}

variable "password" {
  description = "Password for vSphere API operations"
}

variable "user" {
  description = "Username for vSphere API operations"
}

variable "vsphere_server" {
  description = "vCenter server name for vSphere API operations"
}

// Debugging options

variable "client_debug" {
  default     = false
  description = "Log SOAP calls made to the vSphere API to disk"
}

variable "client_debug_path" {
  default     = "${pathexpand("~")/.govmomi}"
  description = "Default log path"
}
