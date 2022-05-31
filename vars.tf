# Copyright (c) 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.



#############################
# tenancy details
#############################

# Get this from the bottom of the OCI screen (after logging in, after Tenancy ID: heading)
variable "tenancy_id" {
  description = "Get this from the bottom of the OCI screen (after logging in, after Tenancy ID: heading)"
  sensitive   = true
}

# Get this from OCI > Identity > Users (for your user account)
variable "user_id" {
  description = "Get this from OCI > Identity > Users (for your user account)"
  sensitive   = true
}

# the fingerprint can be gathered from your user account (OCI > Identity > Users > click your username > API Keys fingerprint (select it, copy it and paste it below))
variable "fingerprint" {
  description = "The fingerprint can be gathered from your user account (OCI > Identity > Users > click your username > API Keys fingerprint (select it, copy it and paste it below))"
  sensitive   = true
}

# this is the full path on your local system to the private key used for the API key pair
variable "private_key_path" {
  description = "This is the full path on your local system to the private key used for the API key pair"
}

# region (us-phoenix-1, ca-toronto-1, etc)
variable "region" {
  default     = "eu-frankfurt-1"
  description = "region (us-phoenix-1, ca-toronto-1, etc)"
}

# default compartment 
variable "default_compartment_id" {
  description = "default compartment OCID"
}

#############################
# naming convension
#############################

# the prefix that will be used for all the names of the OCI artifacts that this automation will provision
variable "names_prefix" {
  type        = string
  default     = "coa-demo-"
  description = "the prefix that will be used for all the names of the OCI artifacts that this automation will provision"
}

# the defined tags to be used for all the artifacts that this automation will provision
variable "defined_tags" {
  type        = map(string)
  default     = {}
  description = "the defined tags to be used for all the artifacts that this automation will provision"
}

# the freeform tags to be used for all the artifacts that this automation will provision
variable "freeform_tags" {
  type        = map(string)
  default     = { "Demo" = "COA Change Management Operations Demo" }
  description = "the freeform tags to be used for all the artifacts that this automation will provision"
}

#############################
# COA Demo network
#############################

# The specific network compartment id. If this is null then the default, project level compartment_id will be used.
variable "network_compartment_id" {
  description = "The specific network compartment id. If this is null then the default, project level compartment_id will be used."
}

# VCN CIDR
variable "vcn_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "VCN CIDR"
}

# public subnet CIDR
variable "public_subnet_cidr" {
  type        = string
  default     = "10.0.10.0/24"
  description = "public subnet CIDR"
}

# public subnet CIDR
variable "private_atp_subnet_cidr" {
  type        = string
  default     = "10.0.11.0/24"
  description = "private subnet CIDR"
}

#############################
# COA Demo network
#############################

variable "domain" {
  type        = string
}

variable "name" {
  type        = string
}
variable "subnet_id" {
  type        = string
}
variable "source_name" {
  type        = string
}
variable "shape_vm" {
  type        = string
}
