# Copyright (c) 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.


output "availability_Domain" {
  description = "availability_domain"
  value       = oci_core_instance.deploy_instance.availability_domain
}


output "image" {
  description = "image_details"
  value       = data.oci_core_images.this.images[0].display_name
}



output "oracle-linux-7-7-latest-name" {
  value = data.oci_core_images.oraclelinux.images.0.display_name
}

output "oracle-linux-7-7-latest-id" {
  value = data.oci_core_images.oraclelinux.images.0.id
}