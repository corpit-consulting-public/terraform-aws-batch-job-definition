
# tf-aws-batch-job-definition

A job definition specifies how jobs are to be run; you can think of it as a blueprint for the resources in your job. You can supply your job with an IAM role to provide programmatic access to other AWS resources, and you specify both memory and CPU requirements.
he job definition can also control container properties, environment variables, and mount points for persistent storage. Many of the specifications in a job definition can be overridden by specifying new values when submitting individual Jobs
## Usage
```hcl 
module "batch-job-definition" {
  name                 = "${var.name}"
  type                 = "${var.type}"
  container_properties = "${var.container_properties}"
}
######For its correct operation it is advisable to create a container_properties.json file and consume the variable from that file.######

```


## README.md
This README file was created runnnign generate-readme.sh placed insinde hooks directory.
If you want to update README.md file, run that script while being in 'hooks' folder.
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| attempt\_duration\_seconds | The time duration in seconds after which AWS Batch terminates your jobs if they have not finished. The minimum value for the timeout is 60 seconds | string | `"60"` | no |
| attempts | The number of time to move a job to the RUNNABLE status. You may specify between 1 and 10 attemps | string | `""` | no |
| container\_properties | A valid container properties provide as a single valid JSON document. This parameters is required if the type parameter is container | string | n/a | yes |
| name | Specifies the name of the job definition | string | n/a | yes |
| parameters | Specifies the parameters substitution placeholders to set in the job definition | string | `""` | no |
| retry\_strategy | Specifies the retry strategy to use for failed jobs thst are submitted with this job definition. Maximun number of retry_strategy is 1. Defined below | string | `""` | no |
| timeout | Specifies the timeout for jobs so that if job runs longer, AWS Batch terminates the job. Maximun number of timeout is 1 | string | `""` | no |
| type | The type of job definition. Must be container | string | n/a | yes |

