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
  #display_name = var.name
  create_vnic_details {
    assign_private_dns_record = "true"
    assign_public_ip          = "true"
    subnet_id                 = var.subnet_id
  }
  source_details {
    source_id   = data.oci_core_app_catalog_listing_resource_version.test_catalog_listing.listing_resource_id
    source_type = "image"
  }
  metadata = {
    ssh_authorized_keys = chomp(file(var.ssh_public_key_path))
  }
}

resource "oci_marketplace_accepted_agreement" "test_accepted_agreement" {
  agreement_id    = oci_marketplace_listing_package_agreement.test_listing_package_agreement.agreement_id
  compartment_id  = var.compartment_id
  listing_id      = data.oci_marketplace_listing.test_listing.id
  package_version = data.oci_marketplace_listing.test_listing.default_package_version
  signature       = oci_marketplace_listing_package_agreement.test_listing_package_agreement.signature
}

resource "oci_marketplace_listing_package_agreement" "test_listing_package_agreement" {
  agreement_id    = data.oci_marketplace_listing_package_agreements.test_listing_package_agreements.agreements[0].id
  listing_id      = data.oci_marketplace_listing.test_listing.id
  package_version = data.oci_marketplace_listing.test_listing.default_package_version
}
