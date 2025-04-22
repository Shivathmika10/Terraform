variable "state_machine_name" {
  description = "The name of the Step Functions state machine."
  type        = string
}

variable "role_arn" {
  description = "The ARN of the IAM role to be assumed by Step Functions."
  type        = string
}

variable "definition_file" {
  description = "The state machine definition in Amazon States Language (ASL)."
  type        = string
}

variable "type" {
  description = "The type of state machine (e.g., STANDARD or EXPRESS)."
  type        = string
}

variable "enable_logging" {
  description = "Whether to enable logging for the state machine."
  type        = bool
}

variable "include_execution_data" {
  description = "Whether to include execution data in the logs."
  type        = bool
}

variable "logging_level" {
  description = "The logging level (ALL, ERROR, OFF)."
  type        = string
}

variable "cloudwatch_log_group_arn" {
  description = "The ARN of the CloudWatch Log Group where logs will be sent."
  type        = string
}

variable "enable_encryption" {
  description = "Whether to enable encryption for the state machine."
  type        = bool
}

variable "kms_key_id" {
  description = "The ARN of the KMS key for encryption."
  type        = string
}

variable "encryption_type" {
  description = "The encryption type (e.g., KMS)."
  type        = string
}

variable "enable_tracing" {
  description = "Whether tracing is enabled for the state machine."
  type        = bool
}

variable "tags" {
  description = "Tags to apply to the state machine."
  type        = map(string)
}