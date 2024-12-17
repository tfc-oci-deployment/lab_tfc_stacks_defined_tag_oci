# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

required_providers {
  oci = {
    source  = "hashicorp/oci"
    #version = "~> 5.7.0"
  }

  random = {
    source  = "hashicorp/random"
    version = "~> 3.5.1"
  }

  archive = {
    source  = "hashicorp/archive"
    version = "~> 2.4.0"
  }

  local = {
    source = "hashicorp/local"
    version = "~> 2.4.0"
  }
}

provider "oci" "configurations" {
  for_each = var.regions

  config {
    region = each.value
    tenancy_ocid       = each.value
    user_ocid          = each.value
    fingerprint        = each.value
    private_key        = each.value
  }
}

provider "random" "this" {}
provider "archive" "this" {}
provider "local" "this" {}
