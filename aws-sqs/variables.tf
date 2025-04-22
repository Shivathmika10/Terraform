#SQS

variable "queue_name" {
  description = "The name of the SQS queue"
  type        = string
}

variable "fifo_queue" {
  description = "Indicates whether the queue is FIFO (true) or standard (false)"
  type        = bool
}

variable "content_based_deduplication" {
  description = "Enable content-based deduplication for FIFO queues"
  type        = bool
}

variable "deduplication_scope" {
  description = "Scope for deduplication (queue or messageGroup)"
  type        = string
}

variable "fifo_throughput_limit" {
  description = "FIFO throughput limit (perQueue or perMessageGroupId)"
  type        = string
}

variable "delay_seconds" {
  description = "The time (in seconds) that the delivery of all messages in the queue is delayed"
  type        = number
}

variable "max_message_size" {
  description = "The maximum message size (in bytes)"
  type        = number
}

variable "message_retention_seconds" {
  description = "The number of seconds Amazon SQS retains a message"
  type        = number
}

variable "receive_wait_time_seconds" {
  description = "The number of seconds for which a ReceiveMessage call waits for a message"
  type        = number
}

variable "queue_policy" {
  description = "Path to the JSON file defining the SQS queue policy"
  type        = string
}

variable "use_sqs_managed_sse_enabled" {
  description = "Enable SQS-managed server-side encryption"
  type        = bool
}

variable "kms_key_id" {
  description = "The ID of the KMS key used for encryption"
  type        = string
  default     = ""
}

variable "enable_dlq" {
  description = "Enable Dead Letter Queue (DLQ)"
  type        = bool
}

variable "dead_letter_queue_arn" {
  description = "ARN of the Dead Letter Queue (DLQ)"
  type        = string
  default     = ""
}

variable "max_receive_count" {
  description = "The number of times a message can be received before being moved to the DLQ"
  type        = number
}

variable "tags" {
  description = "Tags for the SQS queue"
  type        = map(string)
}