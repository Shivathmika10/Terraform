variable "filename" {
  description = "ZIP file containing the Lambda function code"
  type        = string
}
variable "function_name" {
  description = "Name of the Lambda function"
  type        = string
}
variable "description" {
  description = "Description of the Lambda function"
  type        = string
}
variable "handler" {
  description = "Handler for the Lambda function"
  type        = string
}
variable "kms_key_arn" {
  description = "ARN of the KMS key used for Lambda"
  type        = string
}
variable "layers" {
  description = "List of Lambda layers to attach to the function"
  type        = list(string)
}
variable "memory_size" {
  description = "Amount of memory allocated to the Lambda function"
  type        = number
}
variable "role" {
  description = "IAM role ARN that the Lambda function assumes"
  type        = string
}
variable "runtime" {
  description = "Runtime environment for the Lambda function"
  type        = string
}
variable "tags" {
  description = "Tags to assign to the Lambda function"
  type        = map(string)
}
variable "timeout" {
  description = "Timeout for the Lambda function in seconds"
  type        = number
}
variable "environment_variables" {
  description = "Environment variables for the Lambda function"
  type        = map(string)
}
variable "ephemeral_storage_size" {
  description = "Size of the ephemeral storage for the Lambda function"
  type        = number
}
variable "log_format" {
  description = "Log format for the Lambda logging configuration"
  type        = string
}
variable "log_group" {
  description = "Log group for the Lambda function"
  type        = string
}
variable "tracing_mode" {
  description = "Tracing mode for the Lambda function"
  type        = string
}
variable "security_group_ids" {
  description = "security group IDs for the Lambda function"
  type        = list(string)
}
variable "subnet_ids" {
  description = "subnet IDs for the Lambda function"
  type        = list(string)
}

variable "reserved_concurrent_executions" {
  description = "Size of the ephemeral storage for the Lambda function"
  type        = number
  default = 1
}