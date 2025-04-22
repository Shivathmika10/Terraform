resource "aws_sfn_state_machine" "sfn_state_machine" {
  name     = var.state_machine_name
  role_arn = var.role_arn

  definition = var.definition
  type       = var.type

  dynamic "logging_configuration" {
    for_each = var.enable_logging ? [1] : []
    content {
      level                  = var.logging_level
      include_execution_data = var.include_execution_data
      log_destination        = var.cloudwatch_log_group_arn != "" ? var.cloudwatch_log_group_arn : null
    }
  }

  dynamic "encryption_configuration" {
    for_each = var.enable_encryption ? [1] : []
    content {
      kms_key_id = var.kms_key_id
      type       = var.encryption_type
    }
  }

  tracing_configuration {
    enabled = var.tracing_enabled
  }

  tags = var.tags
}