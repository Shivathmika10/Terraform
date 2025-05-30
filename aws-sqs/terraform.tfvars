  queue_name                  = "sqs-shiavthmika-Queue"
  fifo_queue                  = false
  content_based_deduplication = false
  deduplication_scope         = "queue"
  fifo_throughput_limit       = "perQueue"
  delay_seconds               = 30
  max_message_size            = 262144
  message_retention_seconds   = 86400
  receive_wait_time_seconds   = 5
  use_sqs_managed_sse_enabled = true
  kms_key_id                  = ""

  enable_dlq            = false
  dead_letter_queue_arn = ""
  max_receive_count     = 5
  tags = {
    Environment = "Dev"
    Project     = "MyApp"
  }