variable "policy_name" {
    description = "The name of the IAM policy"
    type = string
}

variable "policy_description" {
    description = "A description of the IAM policy"
    type = string
}

variable "policy" {
    description = "The JSON policy document for the IAM policy"
    type = string
}
variable "policy_path" {
    description = "The path to the IAM policy"
    type = string
}