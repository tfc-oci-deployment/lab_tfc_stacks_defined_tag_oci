component "defined_tag_oci_prod" {
  for_each = var.regions

  source = "./defined_tag_oci_prod"

  inputs = {
    region           = each.value
    tenancy_ocid     = var.tenancy_ocid
    user_ocid        = var.user_ocid
    private_key      = var.private_key
    compartment_ocid = var.compartment_ocid
    fingerprint      = var.fingerprint
  }

  providers = {
    oci = provider.oci.configurations[each.value]
  }
}

component "defined_tag_oci_test" {
  for_each = var.regions

  source = "./defined_tag_oci_test"

  inputs = {
    region           = each.value
    tenancy_ocid     = var.tenancy_ocid
    user_ocid        = var.user_ocid
    private_key      = var.private_key
    compartment_ocid = var.compartment_ocid
    fingerprint      = var.fingerprint
  }

  providers = {
    oci = provider.oci.configurations[each.value]
  }
}
