module "oci-defined-tag" {
  source                    = "github.com/fc-terraform-code/tfc-stack-oci-defined-tags-module"
  tenancy_ocid              = var.tenancy_ocid
  user_ocid                 = var.user_ocid
  private_key               = var.private_key
  compartment_ocid          = var.compartment_ocid
  region                    = var.region
  fingerprint               = var.fingerprint
  tag_namespace_name        = "defined_tag_oci_prod"
}
