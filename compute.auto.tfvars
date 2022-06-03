# Copyright (c) 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

#############################
# TENANCY DETAILS
#############################
# compartment 
compartment_id = "ocid1.compartment.oc1..aaaaaaaaes3c3pxlxbcd2upv4vh7wbdfd7vgywuaa75izuu3otrb2omhekaa"

# region
region = "uk-london-1"
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
#oci compute image list --all --profile <<your_profile>> --compartment-id <<your_compartment>> --query "data[*]".{'name:"display-name",id:"id"'} --output table
image_name = "Oracle-Linux-7.9-2022.04.04-0"

#shape, the selected shape must be supported by the source
shape_vm = "VM.Standard1.1"

#############################
# Plug-ins 
#############################

#Vulnerability Scanning. Options [ENABLE / DISABLE]
plug_in_vul = "ENABLE"   

#Oracle Java Management Service	
plug_in_java = "ENABLE"   

#OS Management Service Agent. Options [ENABLE / DISABLE]
plug_os_man = "ENABLE"   

#Management Agent. Options [ENABLE / DISABLE]
plug_man_agent =  "ENABLE"   

#Custom Logs Monitoring. Options [ENABLE / DISABLE]
plug_cus_logs =  "ENABLE"   
    
#Compute Instance Run Command. Options [ENABLE / DISABLE]
plug_in_command =  "ENABLE"   

#Compute Instance Monitoring. Options [ENABLE / DISABLE]
plug_in_mon =  "ENABLE"   

#Block Volume Management. Options [ENABLE / DISABLE]
plug_in_vol=   "ENABLE"   

#Bastion. Options [ENABLE / DISABLE]
plug_bastion=   "ENABLE"   



