resource "oci_core_instance" "test_instance" {
  #Required
  availability_domain = var.domain
  compartment_id      = var.compartment_id
  shape               = var.shape_vm
  shape_config {
    memory_in_gbs = 16
    ocpus         = 1
  }
  #Optional
  display_name = var.name
  create_vnic_details {
    assign_private_dns_record = "true"
    assign_public_ip          = "true"
    subnet_id                 = var.subnet_id
  }
  source_details {
    source_id   = data.oci_core_images.this.images[0].id
    source_type = "image"
  }
  metadata = {
    ssh_authorized_keys = chomp(file(var.ssh_public_key_path))
  }
}
