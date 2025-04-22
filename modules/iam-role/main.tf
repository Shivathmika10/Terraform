resource "aws_iam_role" "iam-role" {
  name                  = var.name
  assume_role_policy    = var.assume_role_policy
  description           = var.description
  force_detach_policies = var.force_detach_policies
  managed_policy_arns   = var.managed_policy_arns
  max_session_duration  = var.max_session_duration
  permissions_boundary  = var.permissions_boundary
  path                  = var.path
  tags                  = var.tags

  dynamic "inline_policy" {
    for_each = var.inline_policies
    content {
      name   = inline_policy.key
      policy = inline_policy.value
    }
  }
}