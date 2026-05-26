variable "path" {
  description = "Path for the IAM group"
  type        = string
  default     = "/"
  validation {
    condition     = can(regex("^/", var.path))
    error_message = "path must start with /."
  }
}
