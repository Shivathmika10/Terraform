  state_machine_name       = "StateMachine-sample"
  role_arn                 = ""
  definition               = "state_machine_definition.json"
  type                     = "STANDARD"
  enable_logging           = false
  include_execution_data   = false
  logging_level            = "OFF"
  cloudwatch_log_group_arn = ""
  enable_encryption        = true
  kms_key_id               = null
  encryption_type          = "AWS_OWNED_kEY"
  tracing_enabled          = false
  tags                     = {

  }