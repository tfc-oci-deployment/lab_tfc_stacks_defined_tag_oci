# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "regions" {
  type = set(string)
}

variable "identity_token" {
  type      = string
  ephemeral = true
}

variable "role_arn" {
  type = string
}

variable "default_tags" {
  description = "A map of default tags to apply to all AWS resources"
  type        = map(string)
  default     = {}
}


variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "private_key" {}
variable "compartment_ocid" {}
variable "region" {}
variable "fingerprint" {}

variable "tag_namespace_name" {
  type    = string
  default = ""
}
