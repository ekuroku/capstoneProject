variable "vpc_id" {
  description = "The VPC ID where the ALB will be created"
  type        = string
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs for the ALB"
  type        = list(string)
}

variable "security_group_id" {
  description = "Security group ID for the ALB"
  type        = string
}

variable "target_port" {
  description = "Target port for the ALB"
  type        = number
  default     = 80
}

variable "environment" {
  description = "Environment tag"
  type        = string
  default     = "production"
}

variable "create_https_listener" {
  description = "Whether to create HTTPS listener"
  type        = bool
  default     = false
}

variable "certificate_arn" {
  description = "ARN of the SSL certificate for HTTPS"
  type        = string
  default     = ""
}