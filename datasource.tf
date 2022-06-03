data "oci_identity_user" "coa_demo_executer" {
  #Required
  user_id = var.user_id
}

data "oci_core_images" "this" {
  #Required
  compartment_id = var.default_compartment_id

  #Optional
  display_name = var.image_name
}
