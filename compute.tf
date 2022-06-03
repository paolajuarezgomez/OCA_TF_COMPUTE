resource "oci_core_instance" "test_instance" {
  #Required
  availability_domain = data.oci_identity_availability_domains.availability_domains.availability_domains[length(data.oci_identity_availability_domains.availability_domains.availability_domains)].name
  compartment_id      = var.compartment_id
  shape               = var.shape_vm
 
  #Optional
  display_name = "${var.names_prefix}compute"
  create_vnic_details {
    assign_private_dns_record = "true"
    assign_public_ip          = "true"
    subnet_id                 = var.subnet_id
  }
  source_details {
    source_id   = data.oci_core_images.this.id
    source_type = "image"
  }
  metadata = {
    ssh_authorized_keys = chomp(file(var.ssh_public_key_path))
  }
}
