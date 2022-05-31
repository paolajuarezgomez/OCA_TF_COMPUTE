# Copyright (c) 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

#############################
# TENANCY DETAILS
#############################

# compartment 
compartment_id = "ocid1.compartment.oc1..aaaaaaaaes3c3pxlxbcd2upv4vh7wbdfd7vgywuaa75izuu3otrb2omhekaa"
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
# Marketplace image
#############################
name = "testserver"
domain = "NoEK:UK-LONDON-1-AD-1"
subnet_id = "ocid1.subnet.oc1.uk-london-1.aaaaaaaagwdhhv3ytdctblnwvtniwdurfrrraz7c3zllw5kasy2qsjf26cdq"
source_name = "Oracle WebLogic Server Enterprise Edition UCM"
shape_vm = "VM.Standard.E4.Flex"




