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
