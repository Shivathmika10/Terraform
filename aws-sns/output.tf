#sns

output "sns_topic_arn" {
  description = "The ARN of the created SNS topic"
  value       = module.sns.sns_topic_arn
}

output "sns_topic_name" {
  description = "The name of the created SNS topic"
  value       = module.sns.sns_topic_name
}

output "sns_subscription_arn" {
  description = "The ARN of the SNS subscription"
  value       = module.sns-subscription.sns_subscription_arn
}

output "sns_subscription_endpoint" {
  description = "The endpoint of the SNS subscription"
  value       = module.sns-subscription.subscription_endpoint
}