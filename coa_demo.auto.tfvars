# Copyright (c) 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

#############################
# TENANCY DETAILS
#############################

# default compartment 
default_compartment_id = "ocid1.compartment.oc1..aaaaaaaaes3c3pxlxbcd2upv4vh7wbdfd7vgywuaa75izuu3otrb2omhekaa"
# region
region= "uk-london-1"

#############################
# naming convension
#############################

# the prefix that will be used for all the names of the OCI artifacts that this automation will provision
names_prefix = "atp-demo-"

#############################
# COA network
#############################

network_compartment_id = null

# VCN CIDR
vcn_cidr = "10.0.0.0/16"

# private subnet CIDR
private_atp_subnet_cidr="10.0.11.0/24"

# public subnet CIDR
public_subnet_cidr = "10.0.10.0/24"


#############################
# OCI COA ADB
#############################

# Compute instances ssh public key
ssh_public_key_path = "./key/id_rsa.pub"

# Compute instances ssh private key
ssh_private_key_path = "./key/id_rsa"


#############################
# OCI COA ADB
#############################

#adb_password              >>>  Stored in a github secret as adb_password
adb_workload               = "OLTP"
adb_db_name                = "ADBCOADEMO2"
adb_display_name           = "ADBCOADEMO2"
adb_db_version             = "19c"
cpu_core_count             = "1"
data_storage_size_in_tbs   = "1"


#############################
# ADB Operations
#############################
#Enable (true) or disable (false) feature auto-scaling
auto_scaling               = "true"
#The current state of the Autonomous Database. Could be set to AVAILABLE or STOPPED
adb_state                  = "AVAILABLE"
#Enable/Disable Operations Insights for this Autonomous Database. Values supported are ENABLED and NOT_ENABLED
insights_status            = "NOT_ENABLED"

local_data_guard_enabled= "true"





