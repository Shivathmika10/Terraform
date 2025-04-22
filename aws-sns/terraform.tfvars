  topic_name                  = "SNS-Topic.fifo"
  display_name                = "SNS Topic"
  fifo_topic                  = true
  content_based_deduplication = false
  kms_master_key_id           = null
  tags                        = {
    Environment = "Dev"
    Project     = "MyApp"
  }