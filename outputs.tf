output "enabled" {
  description = "Whether the module is enabled"
  value       = local.enabled
}

output "group_arn" {
  description = "ARN of the IAM group"
  value       = try(aws_iam_group.this[0].arn, null)
}

output "group_name" {
  description = "Name of the IAM group"
  value       = try(aws_iam_group.this[0].name, null)
}

output "group_id" {
  description = "ID of the IAM group"
  value       = try(aws_iam_group.this[0].id, null)
}
