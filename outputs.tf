# Copyright (c) 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.


output "compute" {
  value       = oci_core_instance.deploy_instance.agent_config
}


output "image" {
  description = "image_details"
  value       = data.oci_core_images.this.images[0]
}

