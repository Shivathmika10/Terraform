# variables.tf

variable "name" {
  description = "The name of the IAM role."
  type        = string
}

variable "assume_role_policy" {
  description = "The policy that grants an entity permission to assume the role."
  type        = string
}

variable "description" {
  description = "A description of the IAM role."
  type        = string
}

variable "force_detach_policies" {
  description = "Whether to force detaching any policies the role has before destroying it."
  type        = bool
}

variable "managed_policy_arns" {
  description = "A list of IAM managed policy ARNs to attach to the role."
  type        = list(string)
}

variable "max_session_duration" {
  description = "The maximum session duration (in seconds) that you want to set for the specified role."
  type        = number
}

variable "permissions_boundary" {
  description = "The ARN of the policy that is used to set the permissions boundary for the role."
  type        = string
}

variable "path" {
  description = "The path to the role."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the role."
  type        = map(string)
}

variable "inline_policies" {
  description = "A map of policy names to policy JSON documents to be embedded as inline policies."
  type        = map(string)
}