# variables.tf

variable "security_account_id" {
  description = "The AWS account ID of the security account"
  type        = string
}

variable "network_account_id" {
  description = "The AWS account ID of the network account"
  type        = string
}

variable "security_hub_delegated" {
  description = "Enable Security Hub Delegated Admin"
  type        = bool
  default     = true
}

variable "guardduty_delegated" {
  description = "Enable GuardDuty Delegated Admin"
  type        = bool
  default     = true
}

variable "firewall_manager_delegated" {
  description = "Enable Firewall Manager Delegated Admin"
  type        = bool
  default     = true
}

variable "inspector2_delegated" {
  description = "Enable Inspector2 Delegated Admin"
  type        = bool
  default     = true
}

variable "macie2_delegated" {
  description = "Enable Macie2 Delegated Admin"
  type        = bool
  default     = true
}

variable "ipam_delegated" {
  description = "Enable IPAM Delegated Admin"
  type        = bool
  default     = true
}