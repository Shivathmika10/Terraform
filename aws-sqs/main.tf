############
# SQS
############

module "sqs_queue" {
  source = "../module/sqs"

  queue_name                  = var.queue_name
  fifo_queue                  = var.fifo_queue
  content_based_deduplication = var.content_based_deduplication
  deduplication_scope         = var.deduplication_scope
  fifo_throughput_limit       = var.fifo_throughput_limit
  delay_seconds               = var.delay_seconds
  max_message_size            = var.max_message_size
  message_retention_seconds   = var.message_retention_seconds
  receive_wait_time_seconds   = var.receive_wait_time_seconds
  queue_policy                = file("./sqs-policy.json")
  use_sqs_managed_sse_enabled = var.use_sqs_managed_sse_enabled
  kms_key_id                  = var.kms_key_id

  enable_dlq            = var.enable_dlq
  dead_letter_queue_arn = var.dead_letter_queue_arn
  max_receive_count     = var.max_receive_count

  tags = var.tags
}