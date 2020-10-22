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


