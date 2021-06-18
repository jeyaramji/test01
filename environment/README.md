## Usage

cd environment

terraform init -backend-config backend/${ENV}.conf
terraform plan -backend-config backend/${ENV}.tfvars
terraform apply -backend-config backend/${ENV}.tfvars

where ${ENV} can be:
 - dev
 - prod

## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_app_asg"></a> [app\_asg](#module\_app\_asg) | ../modules/asg | n/a |
| <a name="module_app_elb"></a> [app\_elb](#module\_app\_elb) | ../modules/elb | n/a |
| <a name="module_db"></a> [db](#module\_db) | ../modules/db | n/a |
| <a name="module_web_asg"></a> [web\_asg](#module\_web\_asg) | ../modules/asg | n/a |
| <a name="module_web_elb"></a> [web\_elb](#module\_web\_elb) | ../modules/elb | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app"></a> [app](#input\_app) | n/a | `any` | n/a | yes |
| <a name="input_desired_capacity"></a> [desired\_capacity](#input\_desired\_capacity) | n/a | `map` | <pre>{<br>  "dev": "1",<br>  "prod": "2"<br>}</pre> | no |
| <a name="input_env"></a> [env](#input\_env) | n/a | `string` | `"dev"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | n/a | `map` | <pre>{<br>  "dev": "t2.micro",<br>  "prod": "t3.medium"<br>}</pre> | no |
| <a name="input_max_size"></a> [max\_size](#input\_max\_size) | n/a | `map` | <pre>{<br>  "dev": "3",<br>  "prod": "10"<br>}</pre> | no |
| <a name="input_min_size"></a> [min\_size](#input\_min\_size) | n/a | `map` | <pre>{<br>  "dev": "1",<br>  "prod": "3"<br>}</pre> | no |

## Outputs

No outputs.
