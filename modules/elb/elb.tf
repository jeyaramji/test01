resource "aws_lb" "this" {

  name                       = var.app_name
  load_balancer_type         = "application"
  subnets                    = ["implemented data_source"]
  security_groups            = [var.alb_sg]
  enable_deletion_protection = true
}

resource "aws_lb_target_group" "this" {
  name        = var.app_name
  port        = 80
  protocol    = "HTTP"
  target_type = "instance"
  vpc_id      = ["implemented data_source"]

}