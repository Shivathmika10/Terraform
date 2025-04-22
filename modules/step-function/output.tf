output "Step_Function_arn" {
    description = "ARN of the step Function"
    value = aws_sfn_state_machine.sfn_state_machine.arn
}