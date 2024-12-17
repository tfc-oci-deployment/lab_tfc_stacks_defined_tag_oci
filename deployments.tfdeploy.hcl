#identity_token "aws" {
#  audience = ["aws.workload.identity"]
#}

deployment "development" {
  inputs = {
    regions        = ["us-ashburn-1"]
    #role_arn       = "<YOUR_ROLE_ARN>"
    #identity_token = identity_token.aws.jwt
    default_tags   = { stacks-preview-example = "lambda-component-expansion-stack" }
    region           = each.value
    tenancy_ocid     = var.tenancy_ocid
    user_ocid        = var.user_ocid
    private_key      = var.private_key
    compartment_ocid = var.compartment_ocid
    fingerprint      = var.fingerprint
  }
}

deployment "production" {
  inputs = {
    regions        = ["us-ashburn-1"]
    #role_arn       = "<YOUR_ROLE_ARN>"
    #identity_token = identity_token.aws.jwt
    default_tags   = { stacks-preview-example = "lambda-component-expansion-stack" }
    region           = each.value
    tenancy_ocid     = var.tenancy_ocid
    user_ocid        = var.user_ocid
    private_key      = var.private_key
    compartment_ocid = var.compartment_ocid
    fingerprint      = var.fingerprint
  }
}
