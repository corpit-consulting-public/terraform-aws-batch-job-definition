
# tf-aws-batch-job-definition

A job definition specifies how jobs are to be run; you can think of it as a blueprint for the resources in your job. You can supply your job with an IAM role to provide programmatic access to other AWS resources, and you specify both memory and CPU requirements.
he job definition can also control container properties, environment variables, and mount points for persistent storage. Many of the specifications in a job definition can be overridden by specifying new values when submitting individual Jobs
## Usage

```hcl
module "batch-def-message-csv-generator" {
  source               = "corpit-consulting-public/batch-job-definition-mod/aws"
  version              = "v2.0.0"
  name                 = var.name
  type                 = var.type
  attempts             = 1
  container_properties = var.container_properties
}

######For its correct operation it is advisable to create a container_properties.json file and consume the variable from that file.######

```


## README.md
This README file was created runnnign generate-readme.sh placed insinde hooks directory.
If you want to update README.md file, run that script while being in 'hooks' folder.
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_batch_job_definition.batch_job_definition](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/batch_job_definition) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attempt_duration_seconds"></a> [attempt\_duration\_seconds](#input\_attempt\_duration\_seconds) | The time duration in seconds after which AWS Batch terminates your jobs if they have not finished. The minimum value for the timeout is 60 seconds | `string` | `"60"` | no |
| <a name="input_attempts"></a> [attempts](#input\_attempts) | The number of time to move a job to the RUNNABLE status. You may specify between 1 and 10 attemps | `string` | `"1"` | no |
| <a name="input_container_properties"></a> [container\_properties](#input\_container\_properties) | A valid container properties provide as a single valid JSON document. This parameters is required if the type parameter is container | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Specifies the name of the job definition | `string` | n/a | yes |
| <a name="input_parameters"></a> [parameters](#input\_parameters) | Specifies the parameters substitution placeholders to set in the job definition | `map(string)` | `{}` | no |
| <a name="input_type"></a> [type](#input\_type) | The type of job definition. Must be container | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_job_definition_arn"></a> [job\_definition\_arn](#output\_job\_definition\_arn) | Job Definition ARN |
| <a name="output_job_definition_name"></a> [job\_definition\_name](#output\_job\_definition\_name) | Job Definition Name |
