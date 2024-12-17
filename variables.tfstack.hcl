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


variable "tenancy_ocid" {
  type    = string
}

variable "user_ocid" {
  type    = string
}

variable "private_key" {
  type    = string
}

variable "compartment_ocid" {
  type    = string
}

variable "region" {
  type    = string
}

variable "fingerprint" {
  type    = string
}

variable "tag_namespace_name" {
  type    = string
  default = ""
}
