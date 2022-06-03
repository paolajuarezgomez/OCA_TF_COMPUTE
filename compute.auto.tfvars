# Copyright (c) 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

#############################
# TENANCY DETAILS
#############################
# compartment 
compartment_id = "ocid1.---"
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
subnet_id = "ocid1.subnet.oc1.----"

#############################
# Compute 
#############################

# Compute instances ssh public key
ssh_public_key_path = "./key/id_rsa.pub"

#############################
# Compute Image
#############################
# The name of the image to be used for all the provisioned compute instances. The automation will automatically figure out the OCID for the specific image name in the target region.
image_name = "Oracle-Linux-7.9-2022.04.04-0"

#shape
#The selected shape must be supported by the source
shape_vm = "VM.Standard2.1"








