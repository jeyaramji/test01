module "app_asg" {
  source = "../modules/asg"

  app_name          = local.app_name
  desired_capacity  = local.desired_capacity
  image_id          = "ami-12345"
  instance_type     = local.instance_type
  max_size          = local.max_size
  min_size          = local.min_size
  target_group_arns = module.web_elb.tg_arn
}

module "app_elb" {
  source = "../modules/elb"

  alb_sg   = "data_source_sg"
  app_name = local.app_name
}