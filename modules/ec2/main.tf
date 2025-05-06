resource "aws_instance" "this" {
  count                  = var.instance_count
  ami                    = var.ami_id
  instance_type          = "t2.micro"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_ids
  user_data              = var.user_data

  root_block_device {
    volume_size = 8
    volume_type = "gp2"
  }

  tags = {
    Name        = "${var.environment}-ec2-${count.index + 1}"
    Environment = var.environment
  }
}