## Usage

```hcl
 
module "batch-job-definition" {
  name                 = "${var.name}"
  type                 = "${var.type}"
  container_properties = "${var.container_properties}"
}
######For its correct operation it is advisable to create a container_properties.json file and consume the variable from that file.######

```


