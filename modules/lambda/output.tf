output "lambda_function_arn" {
  description = "ARN of the created Lambda function"
  value       = aws_lambda_function.lambda.arn
}
output "lambda_function_name" {
  description = "Name of the created Lambda function"
  value       = aws_lambda_function.lambda.function_name
}