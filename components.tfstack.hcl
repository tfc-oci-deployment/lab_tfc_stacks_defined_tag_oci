component "defined_tag_oci_prod" {
  for_each = var.regions

  source = "./defined_tag_oci_prod"

  inputs = {
    region = each.value
  }

  providers = {
    aws = provider.aws.configurations[each.value]
  }
}

component "defined_tag_oci_test" {
  for_each = var.regions

  source = "defined_tag_oci_test"

  inputs = {
    region = var.regions
  }

  providers = {
    aws = provider.aws.configurations[each.value]
  }
}
