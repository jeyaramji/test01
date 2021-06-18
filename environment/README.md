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
