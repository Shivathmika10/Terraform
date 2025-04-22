variable "tags" {
  description = "Tags for the SQS queue"
  type        = map(string)
}
variable "topic_name" {
  description = "The name of the SNS topic"
  type        = string
}

variable "display_name" {
  description = "The display name of the SNS topic"
  type        = string
}

variable "fifo_topic" {
  description = "Whether the SNS topic is FIFO"
  type        = bool
}

variable "content_based_deduplication" {
  description = "Enable content-based deduplication for the FIFO topic"
  type        = bool
}

variable "kms_master_key_id" {
  description = "The KMS key ARN or alias for encrypting the SNS topic"
  type        = string
}

variable "subscription_protocol" {
  description = "Protocol for the SNS subscription (e.g., SQS, email, HTTP)"
  type        = string
}

variable "subscription_endpoint" {
  description = "Endpoint for the SNS subscription"
  type        = string
}

variable "raw_message_delivery" {
  description = "Whether raw message delivery is enabled"
  type        = bool
}

