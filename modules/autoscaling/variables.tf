variable "ami_id" {
  description = "AMI ID for the instances"
  type        = string
}

variable "instance_type" {
  description = "Type of EC2 instance to launch"
  type        = string
  default     = "t2.micro"
}

variable "min_size" {
  description = "Minimum number of instances in ASG"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum number of instances in ASG"
  type        = number
  default     = 3
}

variable "desired_capacity" {
  description = "Desired number of instances in ASG"
  type        = number
  default     = 2
}

variable "vpc_zone_identifier" {
  description = "List of subnet IDs for the ASG"
  type        = list(string)
}

variable "target_group_arns" {
  description = "List of target group ARNs for the ALB"
  type        = list(string)
}

variable "security_group_ids" {
  description = "List of security group IDs for the instances"
  type        = list(string)
}

variable "github_repo" {
  description = "GitHub repository to clone for application deployment"
  type        = string
}

variable "custom_port" {
  description = "Custom port for the application"
  type        = number
}

variable "environment" {
  description = "Environment tag"
  type        = string
  default     = "production"
}