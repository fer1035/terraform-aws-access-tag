# terraform-aws-access-tag

Terraform module to create tag-based access IAM role and user.

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_access_key.tag_access_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key) | resource |
| [aws_iam_role.tag_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_user.tag_user](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_policy.tag_user_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_key_status"></a> [access\_key\_status](#input\_access\_key\_status) | Status of the user access key. | `string` | `"Active"` | no |
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | Target account ID. | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name for which to grant tag-based user access. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_key_id"></a> [access\_key\_id](#output\_access\_key\_id) | Tag user access key ID. |
| <a name="output_role_arn"></a> [role\_arn](#output\_role\_arn) | Tag role ARN. |
| <a name="output_secret_access_key"></a> [secret\_access\_key](#output\_secret\_access\_key) | Tag user secret access key. |
