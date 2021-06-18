variable "app" {
}
variable "env" {
  default = "dev"
}

variable "instance_type" {
  type = map
  default = {
    dev  = "t2.micro"
    prod = "t3.medium"
  }
}

variable "desired_capacity" {
  type = map
  default = {
    dev  = "1"
    prod = "2"
  }

}
variable "max_size" {
  type = map
  default = {
    dev  = "3"
    prod = "10"
  }
}
variable "min_size" {
  type = map
  default = {
    dev  = "1"
    prod = "3"
  }
}