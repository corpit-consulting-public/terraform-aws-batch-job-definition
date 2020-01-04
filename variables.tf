##Variables for Batch Job Definition

variable "name" {
  type        = "string"
  description = "Specifies the name of the job definition"
}

variable "container_properties" {
  type        = "string"
  description = "A valid container properties provide as a single valid JSON document. This parameters is required if the type parameter is container"
}

variable "parameters" {
  type        = "map"
  description = "Specifies the parameters substitution placeholders to set in the job definition"
  default     = {}
}

variable "type" {
  type        = "string"
  description = "The type of job definition. Must be container"
}

###Variable for retry_strategy

variable "attempts" {
  type        = "string"
  description = "The number of time to move a job to the RUNNABLE status. You may specify between 1 and 10 attemps"
  default     = "1"
}

##Variable for timeout

variable "attempt_duration_seconds" {
  type        = "string"
  description = "The time duration in seconds after which AWS Batch terminates your jobs if they have not finished. The minimum value for the timeout is 60 seconds"
  default     = "60"
} 
