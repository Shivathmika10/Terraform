resource "aws_iam_policy" "iam-policy" {
    name = var.policy_name
    description = var.policy_description
    policy = var.policy
    path = var.policy_path
    }