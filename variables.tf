variable "enabled" {
  type        = bool
  description = "Whether or not to create the IAM account alias"
  default     = true
}

variable "name" {
  type        = string
  description = "The Name of the account or solution  (e.g. `account`)"
  default     = "account"
}

variable "namespace" {
  type        = string
  description = "Namespace (e.g. `eg` or `cp`)"
  default     = ""
}

variable "stage" {
  type        = string
  description = "Stage (e.g. `prod`, `dev`, `staging`)"
  default     = ""
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `namespace`, `stage`, `name` and `attributes`"
}

variable "attributes" {
  type        = list(string)
  default     = []
  description = "Additional attributes (e.g. `1`, `a`, etc)"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. `{\"BusinessUnit\" = \"XYZ\"}`)"
}

variable "password_policy_enabled" {
  type        = bool
  description = "Whether or not to create the IAM account password policy"
  default     = true
}

variable "allow_users_to_change_password" {
  type        = bool
  description = "Whether to allow users to change their own password"
  default     = true
}

variable "hard_expiry" {
  type        = bool
  description = "Whether users are prevented from setting a new password after their password has expired (i.e. require administrator reset)"
  default     = true
}

variable "max_password_age" {
  type        = number
  description = "The number of days that a user's password is valid"
  default     = 90
}

variable "minimum_password_length" {
  type        = number
  description = "Minimum length to require for user passwords"
  default     = 32
}

variable "password_reuse_prevention" {
  type        = number
  description = "The number of previous passwords that users are prevented from reusing"
  default     = 3
}

variable "require_lowercase_characters" {
  type        = bool
  description = "Whether to require lowercase characters for user passwords"
  default     = true
}

variable "require_uppercase_characters" {
  type        = bool
  description = "Whether to require uppercase characters for user passwords"
  default     = true
}

variable "require_numbers" {
  type        = bool
  description = "Whether to require numbers for user passwords"
  default     = true
}

variable "require_symbols" {
  type        = bool
  description = "Whether to require symbols for user passwords"
  default     = true
}

