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
# Bastion
#############################

# Compute instances ssh public key
variable "ssh_private_key_path" {
  description = "Compute instances ssh public key"
}

# Compute instances ssh private key
variable "ssh_public_key_path" {
  description = "Compute instances ssh private key"
}

# The name of the image to be used for all the provisioned compute instances. The automation will automatically figure out the OCID for the specific image name in the target region.
variable "image_name" {
  type        = string
  default     = "Oracle-Linux-7.9-2022.04.04-0"
  description = "The name of the image to be used for all the provisioned compute instances. The automation will automatically figure out the OCID for the specific image name in the target region."
}

variable "shape" {
  type        = string
  default     = "VM.Standard2.1"
  description = "The name of the shape to be used for all the provisioned compute instances. The automation will automatically figure out the OCID for the spaecific shape name in the target region."
}


#############################
# ADB
#############################


variable "adb_password" {
  type        = string
  description = "Initial ADB ADMIN user password"
  sensitive   = true
}

variable "adb_db_name" {
  type        = string
  description = "ADB DB Name"
}

variable "adb_display_name" {
  type        = string
  description = "ADB display name shown in the console"
}

variable "adb_db_version" {
  type        = string
  default     = "19c"
  description = "ADB Oracle database version"
}

variable "adb_workload" {
  type        = string
  default     = "OLTP"
  description = "ADB workload type: OLTP, DW"
}

variable "ATP_tde_wallet_zip_file" {
  type        = string
  default     = "adb_wallet.zip"
  description = "Name of the file where to store the ADB wallet"
}

variable "oracle_instant_client_version" {
  type        = string
  default     = "19.10"
  description = "Oracle client version"
}

variable "oracle_instant_client_version_short" {
  type        = string
  default     = "19.10"
  description = "Oracle client version short name"
}

variable "cpu_core_count" {
  default     = "1"
  description = "cpu database"
}

variable "data_storage_size_in_tbs" {
  default     = "1"
  description = "database size in tbs"
}

variable "conn_db" {
  default = ""
}

variable "username" {
  default = ""
  sensitive   = true
}

variable "password" {
  default = ""
  sensitive   = true
}

#############################
# ADB Operations
#############################


variable "auto_scaling" {
  type        = string
  default = "true"
}


variable "adb_state" {
  type        = string
  #state - (Optional) (Updatable) The current state of the Autonomous Database. Could be set to AVAILABLE or STOPPED
  default = "AVAILABLE"
}

variable "insights_status" {
  type        = string
  #operations_insights_status - (Optional) (Updatable) Status of Operations Insights for this Autonomous Database.
  # Values supported are ENABLED and NOT_ENABLED
  default = "NOT_ENABLED"
}

variable "local_data_guard_enabled" {
  type        = bool
  default = "false"
}
