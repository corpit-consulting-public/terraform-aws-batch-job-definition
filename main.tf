resource "aws_batch_job_definition" "batch_job_definition" {
  name = var.name
  type = var.type

  container_properties = var.container_properties

  parameters = var.parameters

  retry_strategy {
    attempts = var.attempts
  }

  timeout {
    attempt_duration_seconds = var.attempt_duration_seconds
  }
}

