# Copyright (c) 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

#############################
# TENANCY DETAILS
#############################
# compartment 
compartment_id = "ocid1.compartment.oc1..aaaaaaaaes3c3pxlxbcd2upv4vh7wbdfd7vgywuaa75izuu3otrb2omhekaa"
# region
region = "uk-london-1"
#Domain
domain = "NoEK:UK-LONDON-1-AD-1"


#############################
# Network
#############################
#subnet id
subnet_id = "ocid1.subnet.oc1.uk-london-1.aaaaaaaafgulkrnzgwbb3izknpr6jo24xk6rggrglgqaht4dovtvd3iaebfq"

#############################
# Compute 
#############################
name= "Test"

# Compute instances ssh public key
ssh_public_key_path = "./key/id_rsa.pub"

#############################
# Marketplace image
#############################
#source name
source_name = "Oracle WebLogic Server Enterprise Edition UCM"

#shape
#The selected shape must be supported by the source
shape_vm = "VM.Standard.E4.Flex"








