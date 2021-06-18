variable "app_name" {
  type        = string
  description = "The name of the application"
}

variable "allowed_sg" {
  type        = list(string)
  description = "Allow only app server security groups"
}

variable "engine" {}
variable "engine_version" {}
variable "instance_class" {}
variable "username" {}
variable "password" {}
variable "parameter_group_name" {
  default = "default.mysql5.7"
}
variable "skip_final_snapshot" {
  default = "true"
}