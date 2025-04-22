resource "aws_lambda_function" "lambda" {
  filename            = var.filename
  function_name       = var.function_name
  architectures       = ["x86_64"]
  description         = var.description
  handler             = var.handler
  kms_key_arn         = var.kms_key_arn
  layers              = var.layers
  memory_size         = var.memory_size
  role                = var.role
  runtime             = var.runtime
  tags                = var.tags
  timeout             = var.timeout
  reserved_concurrent_executions = var.reserved_concurrent_executions
  environment {
    variables = var.environment_variables
  }

  ephemeral_storage {
    size = var.ephemeral_storage_size
  }

  logging_config {
    log_format = var.log_format
    log_group  = var.log_group
  }

  tracing_config {
    mode = var.tracing_mode
  }

  vpc_config {
    security_group_ids = var.security_group_ids
    subnet_ids         = var.subnet_ids
  }
}