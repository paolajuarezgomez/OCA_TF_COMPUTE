data "oci_identity_user" "coa_demo_executer" {
  #Required
  user_id = var.user_id
}

output "availability_Domain" {
  description = "availability_domain"
  value = oci_core_instance.test_instance.availability_domain
}

output "listing_id" {
  description = ""
  value      = data.oci_marketplace_listing.test_listing.id
}

output "package_version"{
  description = "default package version"
  value   = data.oci_marketplace_listing.test_listing.default_package_version
}

output "source_id"{
  description = "ocid source"
  value   = data.oci_core_app_catalog_listing_resource_version.test_catalog_listing.listing_resource_id 
}

output "app_catalog"{
  description = ""
  value   = data.oci_marketplace_listing_package.test_listing_package.app_catalog_listing_id
}

output "oci_marketplace_listings" {
  description = ""
  sensitive = false
  value = [
  format("Listing name: %s", data.oci_marketplace_listings.test_listings.listings[0].name),
  format("Package Type: %s", data.oci_marketplace_listings.test_listings.listings[0].package_type)
  ]
}