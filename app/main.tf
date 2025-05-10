module "vpc" {
  source               = "../modules/vpc"
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs  # Updated to match module variable name
  private_subnet_cidrs = var.private_subnet_cidrs # Updated to match module variable name
  environment          = var.environment
}

module "security_group" {
  source      = "../modules/security_group"
  vpc_id      = module.vpc.vpc_id
  environment = var.environment
}

module "alb" {
  source            = "../modules/alb"
  vpc_id            = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
  security_group_id = module.security_group.sg_id
  target_port       = var.target_port
  environment       = var.environment

  depends_on = [module.vpc]
}

module "autoscaling" {
  source              = "../modules/autoscaling"
  ami_id              = var.ami_id
  instance_type       = "t2.micro"
  min_size            = var.min_size
  max_size            = var.max_size
  desired_capacity    = var.desired_capacity
  vpc_zone_identifier = module.vpc.private_subnet_ids
  target_group_arns   = [module.alb.target_group_arn]
  security_group_ids  = [module.security_group.sg_id]
  github_repo         = var.github_repo
  environment         = var.environment
  depends_on = [module.alb, module.security_group]
}