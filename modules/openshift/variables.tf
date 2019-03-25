variable "platform_name" {}

variable "identity_providers" {
  type        = "list"
  description = "The identity providers to enable (AllowAllIdentityProvider, GoogleIdentityProvider, HTPasswdPasswordIdentityProvider)"

  default = [
    "AllowAllIdentityProvider",
  ]
}

variable "google_client_id" {
  type        = "string"
  description = "The Google client id used by the GoogleIdentityProvider"
  default     = ""
}

variable "google_client_secret" {
  type        = "string"
  description = "The client secret used by the GoogleIdentityProvider"
  default     = ""
}

variable "google_client_domain" {
  type        = "string"
  description = "The domain used by the GoogleIdentityProvider"
  default     = ""
}

variable "openshift_cluster_cidr" {
  type        = "string"
  default     = "10.128.0.0/14"
  description = "This variable overrides the SDN cluster network CIDR block. This is the network from which pod IPs are assigned. Specify a private block that does not conflict with existing network blocks in your infrastructure to which pods, nodes, or the master might require access"
}

variable "rh_subscription_pool_id" {
  description = "Red Hat subscription pool id for OpenShift Container Platform"
  default     = ""
}

variable "rhn_username" {
  description = "Red Hat Network login username for registration system of the OpenShift Container Platform cluster"
  default     = ""
}

variable "rhn_password" {
  description = "Red Hat Network login password for registration system of the OpenShift Container Platform cluster"
  default     = ""
}

variable "bastion_ssh_user" {}

variable "bastion_endpoint" {}

variable "platform_private_key" {}

variable "openshift_major_version" {
  default = "3.11"
}

variable "use_community" {
  default = false
}

variable "master_domain" {}

variable "platform_domain" {}

variable "public_certificate_pem" {
  default = ""
}

variable "public_certificate_key" {
  default = ""
}

variable "public_certificate_intermediate_pem" {
  default = ""
}
