variable "public_hosted_zone_name" {
  description = "The domain name for which to create a hosted zone."
  type        = string
  default     = ""
}

variable "certificate_arn" {
  description = "ARN of an existing certificate to attach to the ALB."
  type        = string
  default     = ""
}

variable "certificate_name" {
  description = "Name of the certificate to create and validate for '*.domain'."
  type        = string
  default     = ""
}