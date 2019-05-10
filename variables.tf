##Variables for Batch Job Definition

variable "name" {
  type        = "string"
  description = "Specifies the name of the job definition"
  default     = ""
}

variable "container_properties" {
  type        = "string"
  description = "A valid container properties provide as a single valid JSON document. This parameters is required if the type parameter is container"
  default     = ""
}

variable "parameters" {
  type        = "string"
  description = "Specifies the parameters substitution placeholders to set in the job definition"
  default     = ""
}

variable "retry_strategy" {
  type        = "string"
  description = "Specifies the retry strategy to use for failed jobs thst are submitted with this job definition. Maximun number of retry_strategy is 1. Defined below"
  default     = ""
}

variable "timeout" {
  type        = "string"
  description = "Specifies the timeout for jobs so that if job runs longer, AWS Batch terminates the job. Maximun number of timeout is 1"
  default     = ""
}

variable "type" {
  type        = "string"
  description = "The type of job definition. Must be container"
  default     = ""
}

###Variable for retry_strategy

variable "attempts" {
  type        = "string"
  description = "The number of time to move a job to the RUNNABLE status. You may specify between 1 and 10 attemps"
  default     = ""
}

##Variable for timeout

variable "attempt_duration_seconds" {
  type        = "string"
  description = "The time duration in seconds after which AWS Batch terminates your jobs if they have not finished. The minimum value for the timeout is 60 seconds"
  default     = "60"
} 
