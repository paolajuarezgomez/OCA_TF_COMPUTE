# Copyright (c) 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.


output "availability_Domain" {
  description = "availability_domain"
  value       = oci_core_instance.test_instance.availability_domain
}





