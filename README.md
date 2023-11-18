<!-- BEGIN_TF_DOCS -->
# Quick AWS EC2

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Terraform project which create VPC and EC2 resource on AWS from scratch.

## *Create and destroy the infrastructure*

### 2. Create infrastructure

```shell
git clone https://gitlab.com/mbasri/quick-aws-ec2.git
cd quick-aws-ec2
terraform init
terraform apply
```

### 2. Destroy infrastructure

```shell
git clone https://gitlab.com/mbasri/quick-aws-ec2.git
cd quick-aws-ec2
terraform init
terraform destroy
```

## Generate docs

```shell
terraform-docs -c .terraform-docs.yml .
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.6.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.25.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_kms"></a> [kms](#module\_kms) | git::https://gitlab.com/mbasri-terraform/modules/aws/terraform-aws-kms | v1.0.3 |
| <a name="module_security-group"></a> [security-group](#module\_security-group) | git::https://gitlab.com/mbasri-terraform/modules/aws/terraform-aws-security-group | v1.0.2 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | git::https://gitlab.com/mbasri-terraform/modules/aws/terraform-aws-vpc | v1.0.8 |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_default_security_group_id"></a> [default\_security\_group\_id](#output\_default\_security\_group\_id) | The ID of the VPC default security group |
| <a name="output_key_alias_arn"></a> [key\_alias\_arn](#output\_key\_alias\_arn) | The Amazon Resource Name (ARN) of the key alias |
| <a name="output_key_alias_name"></a> [key\_alias\_name](#output\_key\_alias\_name) | Name of the key alis |
| <a name="output_key_arn"></a> [key\_arn](#output\_key\_arn) | The Amazon Resource Name (ARN) of the key |
| <a name="output_key_id"></a> [key\_id](#output\_key\_id) | Name of the key |
| <a name="output_key_policy"></a> [key\_policy](#output\_key\_policy) | The IAM resource policy set on the key |
| <a name="output_nat_gateway_public_ips"></a> [nat\_gateway\_public\_ips](#output\_nat\_gateway\_public\_ips) | Private IP of NAT Gateway |
| <a name="output_private_subnet_cidr"></a> [private\_subnet\_cidr](#output\_private\_subnet\_cidr) | List of cidr\_blocks of private subnets |
| <a name="output_private_subnet_ids"></a> [private\_subnet\_ids](#output\_private\_subnet\_ids) | List of IDs of private subnets |
| <a name="output_public_subnet_cidr"></a> [public\_subnet\_cidr](#output\_public\_subnet\_cidr) | List of cidr\_blocks of public subnets |
| <a name="output_public_subnet_ids"></a> [public\_subnet\_ids](#output\_public\_subnet\_ids) | List of IDs of public subnets |
| <a name="output_region"></a> [region](#output\_region) | The Name of the region |
| <a name="output_secure_subnet_cidr"></a> [secure\_subnet\_cidr](#output\_secure\_subnet\_cidr) | List of cidr\_blocks of secure subnets |
| <a name="output_secure_subnet_ids"></a> [secure\_subnet\_ids](#output\_secure\_subnet\_ids) | List of IDs of secure subnets |
| <a name="output_security_group_arn"></a> [security\_group\_arn](#output\_security\_group\_arn) | The ARN of the security group |
| <a name="output_security_group_description"></a> [security\_group\_description](#output\_security\_group\_description) | The description of the security group |
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | The ID of the security group |
| <a name="output_security_group_name"></a> [security\_group\_name](#output\_security\_group\_name) | The name of the security group |
| <a name="output_security_group_owner_id"></a> [security\_group\_owner\_id](#output\_security\_group\_owner\_id) | The owner ID |
| <a name="output_security_group_vpc_id"></a> [security\_group\_vpc\_id](#output\_security\_group\_vpc\_id) | The VPC ID |
| <a name="output_spot_logging_cwl_id"></a> [spot\_logging\_cwl\_id](#output\_spot\_logging\_cwl\_id) | The IDs of the cloudwatch logs for Spot logging |
| <a name="output_vpc_cidr_blocks"></a> [vpc\_cidr\_blocks](#output\_vpc\_cidr\_blocks) | The CIDR block of the VPC |
| <a name="output_vpc_flow_log_cwl_id"></a> [vpc\_flow\_log\_cwl\_id](#output\_vpc\_flow\_log\_cwl\_id) | The ID of the cloudwatch logs for VPC flow logs |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The ID of the VPC |

## Author

* [**Mohamed BASRI**](https://gitlab.com/mbasri)

## License

This is free and unencumbered software released into the public domain - see the [LICENSE](./LICENSE) file for details

<!-- END_TF_DOCS -->