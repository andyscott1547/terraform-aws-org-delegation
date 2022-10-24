# AWS Terraform Organization Delegation Module

Delegate AWS service admin to dedicated accounts.

- [Overview](#overview)
- [References](#references)
- [Terraform Docs](#terraform-docs)

## Overview

This module is designed to help delegate services from the Organization Management account. Currently supported delegation services are:

* IPAM
* Guardduty
* SecurityHub
* Macie2
* Inspector2
* Firewall Manager

## References

* https://docs.aws.amazon.com/prescriptive-guidance/latest/security-reference-architecture/welcome.html

## Terraform-Docs

<!-- BEGIN_TF_DOCS -->
#### Requirements

| Name | Version |
|------|---------|
| terraform | ~> 1.0 |
| aws | ~> 4.0 |

#### Providers

| Name | Version |
|------|---------|
| aws | ~> 4.0 |

#### Modules

No modules.

#### Resources

| Name | Type |
|------|------|
| [aws_fms_admin_account.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/fms_admin_account) | resource |
| [aws_guardduty_organization_admin_account.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_organization_admin_account) | resource |
| [aws_inspector2_delegated_admin_account.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/inspector2_delegated_admin_account) | resource |
| [aws_macie2_account.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/macie2_account) | resource |
| [aws_macie2_organization_admin_account.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/macie2_organization_admin_account) | resource |
| [aws_securityhub_organization_admin_account.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/securityhub_organization_admin_account) | resource |
| [aws_vpc_ipam_organization_admin_account.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_ipam_organization_admin_account) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| firewall_manager_delegated | Enable Firewall Manager Delegated Admin | `bool` | `true` | no |
| guardduty_delegated | Enable GuardDuty Delegated Admin | `bool` | `true` | no |
| network_account_id | The AWS account ID of the network account | `string` | n/a | yes |
| security_account_id | The AWS account ID of the security account | `string` | n/a | yes |
| security_hub_delegated | Enable Security Hub Delegated Admin | `bool` | `true` | no |

#### Outputs

No outputs.
<!-- END_TF_DOCS -->