output "queue_id" {
  description = "The ID of the created SQS queue"
  value       = module.sqs_queue.sqs_queue_id
}

output "queue_arn" {
  description = "The ARN of the created SQS queue"
  value       = module.sqs_queue.sqs_queue_arn
}

output "queue_url" {
  description = "The URL of the created SQS queue"
  value       = module.sqs_queue.sqs_queue_url
}