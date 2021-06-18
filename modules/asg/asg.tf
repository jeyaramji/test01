resource "aws_launch_template" "this" {
  name_prefix          = var.app_name
  image_id             = var.image_id
  instance_type        = var.instance_type
  security_group_names = ["data_source_sg"]
}

resource "aws_autoscaling_group" "this" {
  availability_zones        = var.availability_zones
  desired_capacity          = var.desired_capacity
  max_size                  = var.max_size
  min_size                  = var.min_size
  target_group_arns         = [var.target_group_arns]
  health_check_type         = "EC2"
  health_check_grace_period = 300

  launch_template = {
    id      = aws_launch_template.this.id
    version = "$$Latest"
  }
}