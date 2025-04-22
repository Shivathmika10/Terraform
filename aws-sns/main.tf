############
# SNS
############

module "sns" {
  source                      = "../module/sns"
  topic_name                  = var.topic_name
  display_name                = var.display_name
  fifo_topic                  = var.fifo_topic
  content_based_deduplication = var.content_based_deduplication
  kms_master_key_id           = var.kms_master_key_id
  topic_access_policy         = file("./sns-access-policy.json")
  delivery_policy             = file("./sns-delivery-policy.json")
  tags                        = var.tags
}

module "sns-subscription" {
  source               = "../module/sns-subscription"
  topic_arn            = module.sns.sns_topic_arn
  protocol             = var.subscription_protocol
  endpoint             = var.subscription_endpoint
  raw_message_delivery = var.raw_message_delivery
}

