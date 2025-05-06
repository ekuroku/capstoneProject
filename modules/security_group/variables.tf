variable "vpc_id" {
  description = "The VPC ID where the security group will be created"
  type        = string
}

variable "custom_port" {
  description = "Custom port to open"
  type        = number
}

variable "environment" {
  description = "Environment tag"
  type        = string
  default     = "production"
}