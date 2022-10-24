# examples/basic/main.tf

module "org_delegation" {
  source              = "andyscott1547/org-delegation/aws"
  version             = "0.1.2"
  security_account_id = "123456789012"
  network_account_id  = "123456789013"
}

