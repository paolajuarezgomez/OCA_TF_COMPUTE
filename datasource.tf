data "oci_identity_user" "coa_demo_executer" {
  #Required
  user_id = var.user_id
}

data "oci_identity_availability_domains" "availability_domains" {
  #Required
  compartment_id = var.tenancy_id
}

data "oci_core_images" "this" {
  #Required
  compartment_id = var.compartment_id

  #Optional
  display_name = var.image_name
}

# get latest Oracle Linux
data "oci_core_images" "oraclelinux" {
  compartment_id = var.compartment_id
  operating_system = "Oracle Linux"
  operating_system_version = "8.5"
  filter {
    name = "display_name"
    values = ["^([a-zA-z]+)-([a-zA-z]+)-([\\.0-9]+)-([\\.0-9-]+)$"]
    regex = true
  }
}
