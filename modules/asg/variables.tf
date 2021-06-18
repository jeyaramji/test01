variable "app_name" {
  type        = string
  description = "The name of the application"
}

variable "image_id" {
  type        = string
  description = "The AMI to be used for the EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "Ec2 instance type to be used"
}

variable "availability_zones" {
  type        = list(string)
  description = "The availability_zones  to be used"
  default     = ["us-east-1a"]
}

variable "desired_capacity" {
  type        = string
  description = "The desired_capacity"
}

variable "max_size" {
  type        = string
  description = "The max_size"
}

variable "min_size" {
  type        = string
  description = "The min_size"
}

variable "target_group_arns" {
  description = "The arn of target group to attach"
}