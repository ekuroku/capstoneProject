output "instance_ids" {
  description = "The IDs of the EC2 instances"
  value       = aws_instance.this[*].id
}

output "instance_public_ips" {
  description = "The public IP addresses of the EC2 instances"
  value       = aws_instance.this[*].public_ip
}
