output "asg_arn" {
  value = aws_autoscaling_group.this.arn
}

output "asg_name" {
  value = aws_autoscaling_group.this.arn
}

output "asg_sg" {
  value = aws_launch_template.this.security_group_names
}