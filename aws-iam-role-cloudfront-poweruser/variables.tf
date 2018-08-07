variable "source_account_id" {
  type = "string"
}

variable "role_name" {
  type = "string"
}

variable "s3_bucket_prefix" {
  type        = "string"
  description = "Limits role permissions to buckets with specific prefix. Empty string for all buckets."
  default     = ""
}

variable "iam_path" {
  type    = "string"
  default = "/"
}
