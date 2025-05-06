variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
  default     = 1
}

variable "ami_id" {
  description = "AMI ID for the EC2 instances"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where the instances will be launched"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs to associate with the instances"
  type        = list(string)
}

variable "user_data" {
  description = "User data script to run on instance launch"
  type        = string
  default     = null
}

variable "environment" {
  description = "Environment tag"
  type        = string
  default     = "production"
}