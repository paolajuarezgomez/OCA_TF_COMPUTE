
resource "oci_core_instance" "deploy_instance" {

  #Required
  availability_domain = data.oci_identity_availability_domains.availability_domains.availability_domains[1 % length(data.oci_identity_availability_domains.availability_domains.availability_domains)].name
  compartment_id      = var.compartment_id
  shape               = var.shape_vm

  create_vnic_details {

    #Optional
    assign_public_ip = true
    defined_tags = {
      "CCA_Basic_Tag.email" = data.oci_identity_user.coa_demo_executer.name
    }
    display_name   = "${var.names_prefix}compute"
    freeform_tags  = var.freeform_tags
    hostname_label = "${var.names_prefix}compute"
    subnet_id      = var.subnet_id
  }
  metadata = {
    ssh_authorized_keys = chomp(file(var.ssh_public_key_path))
  }
  defined_tags = {
    "CCA_Basic_Tag.email" = data.oci_identity_user.coa_demo_executer.name
  }
  display_name = "${var.names_prefix}compute"
  source_details {
    #Required
    source_id   = data.oci_core_images.this.images.0.id
    source_type = "image"
  }
  preserve_boot_volume = false
}
