variable "account_id" {
  type        = string
  description = "Target account ID."
}

variable "project_name" {
  type        = string
  description = "Project name for which to grant tag-based user access."
}

variable "access_key_status" {
  type        = string
  default     = "Active"
  description = "Status of the user access key."
}
