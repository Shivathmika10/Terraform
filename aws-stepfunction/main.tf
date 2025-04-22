module "sfn_state_machine" {
  source = "../modules/step-function"

  state_machine_name       = var.state_machine_name
  role_arn                 = var.role_arn
  definition               = file("${path.module}/${var.definition_file}")
  type                     = var.type
  enable_logging           = var.enable_logging
  include_execution_data   = var.include_execution_data
  logging_level            = var.logging_level
  cloudwatch_log_group_arn = var.cloudwatch_log_group_arn
  enable_encryption        = var.enable_encryption
  kms_key_id               = var.kms_key_id
  encryption_type          = var.encryption_type
  tracing_enabled          = var.enable_tracing
  tags                     = var.tags
}