locals {
  app_name         = format("%s-%s", var.app, var.env)
  instance_type    = lookup(var.instance_type, var.env, "dev")
  desired_capacity = lookup(var.desired_capacity, var.env, "dev")
  max_size         = lookup(var.max_size, var.env, "dev")
  min_size         = lookup(var.min_size, var.env, "dev")
}