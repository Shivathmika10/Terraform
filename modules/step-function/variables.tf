variable "state_machine_name" {
  description = "The name of the Step Function state machine"
  type        = string
}

variable "role_arn" {
  description = "The ARN of the IAM role the state machine will use"
  type        = string
}

variable "definition" {
  description = "The definition of the state machine in Amazon States Language (ASL)"
  type        = string
}

variable "type" {
  description = "Step Function type: STANDARD or EXPRESS"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the step Function"
  type        = map(string)
  default     = {}
}

variable "tracing_enabled" {
  description = "Enable tracing for the state machine"
  type        = bool
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
  default     = ""
}

variable "enable_encryption" {
  description = "Whether to enable encryption for the state machine."
  type        = bool
}

variable "kms_key_id" {
  description = "The ARN of the KMS key for encryption."
  type        = string
  default     = ""
}

variable "encryption_type" {
  description = "The encryption type (e.g., KMS)."
  type        = string
}