# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

required_providers {
  oci = {
    source  = "hashicorp/oci"
    version = "~> 2.0.0"
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
    tenancy_ocid       = var.tenancy_ocid
    user_ocid          = var.user_ocid
    fingerprint        = var.fingerprint
    private_key        = var.private_key
  }
}

provider "random" "this" {}
provider "archive" "this" {}
provider "local" "this" {}
