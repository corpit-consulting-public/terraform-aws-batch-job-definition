output "job_definition_name" {
  description = "Job Definition Name"
  value       = aws_batch_job_definition.batch_job_definition.name
}

output "job_definition_arn" {
  description = "Job Definition ARN"
  value       = aws_batch_job_definition.batch_job_definition.arn
}
