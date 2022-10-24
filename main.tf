# main.tf

resource "aws_guardduty_organization_admin_account" "this" {
  count            = var.guardduty_delegated ? 1 : 0
  admin_account_id = var.security_account_id
}

resource "aws_securityhub_organization_admin_account" "this" {
  count            = var.security_hub_delegated ? 1 : 0
  admin_account_id = var.security_account_id
}

resource "aws_inspector2_delegated_admin_account" "this" {
  count      = var.inspector2_delegated ? 1 : 0
  account_id = var.security_account_id
}

resource "aws_macie2_account" "this" {
  count = var.macie2_delegated ? 1 : 0
}

resource "aws_macie2_organization_admin_account" "this" {
  count            = var.macie2_delegated ? 1 : 0
  admin_account_id = var.security_account_id
  depends_on       = [aws_macie2_account.this]
}

resource "aws_fms_admin_account" "this" {
  count      = var.firewall_manager_delegated ? 1 : 0
  account_id = var.network_account_id
}

resource "aws_vpc_ipam_organization_admin_account" "this" {
  count                      = var.ipam_delegated ? 1 : 0
  delegated_admin_account_id = var.network_account_id
}