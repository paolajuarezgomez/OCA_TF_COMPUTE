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

#  compartment 
variable "compartment_id" {
  description = "compartment OCID"
}

variable "names_prefix" {
  type = string
}

# the freeform tags to be used for all the artifacts that this automation will provision
variable "freeform_tags" {
  type        = map(string)
  default     = { "Demo" = "COA Change Management Operations Demo" }
  description = "the freeform tags to be used for all the artifacts that this automation will provision"
}
#############################
# Compute
#############################

variable "image_name" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "shape_vm" {
  type = string
}

# Compute instances ssh private key
variable "ssh_public_key_path" {
  type        = string
  description = "Compute instances ssh private key"
}

#############################
# Plug-ins cloud agent
#############################

variable "plug_in_vul" {
  type = string
  default = "DISABLE"
}

variable "plug_in_java"{
  type = string
  default = "DISABLE"
}

variable "plug_os_man" {
  type = string
  default = "ENABLE"
}

variable "plug_man_agent" {
  type = string
  default = "ENABLE"
}

variable "plug_cus_logs" {
  type = string  
  default = "ENABLE"
}

variable "plug_in_command" {
  type = string
  default = "ENABLE"
}

variable "plug_in_mon" {
  type = string
  default = "ENABLE"
}

variable "plug_in_vol" {
  type = string
  default = "DISABLE"
}

variable "plug_bastion" {
  type = string
  default = "DISABLE"
}
    

