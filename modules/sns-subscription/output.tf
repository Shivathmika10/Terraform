
output "sns_subscription_arn" {
  description = "The ARN of the SNS subscription"
  value       = aws_sns_topic_subscription.sns_subscription.arn
}
