

resource "oci_objectstorage_bucket" "test_bucket" {
  #Required
  compartment_id = var.default_compartment_id
  name           = "${var.names_prefix}bucket"
  namespace      = data.oci_objectstorage_namespace.user_namespace.namespace

}
