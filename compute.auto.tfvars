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

# the prefix that will be used for all the names of the OCI artifacts that this automation will provision
names_prefix = "coa-demo-"

#############################
# Network
#############################
#subnet id
subnet_id = "ocid1.subnet.oc1.uk-london-1.aaaaaaaarf7w5cityqg3g75medvy7bvw66griadl5xlwn2rs4nqkpbx2evba"

#############################
# Compute 
#############################

# Compute instances ssh public key
ssh_public_key_path = "./key/id_rsa.pub"

#############################
# Compute Image
#############################
# The name of the image to be used for all the provisioned compute instances. The automation will automatically figure out the OCID for the specific image name in the target region.
#image_name = "Oracle-Linux-8.6-2022.05.31-0"
image_name = "Oracle-Linux-7.9-2022.04.04-0"

#shape
#The selected shape must be supported by the source
shape_vm = "VM.Standard1.1"








