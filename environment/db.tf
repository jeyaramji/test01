module "db" {
  source = "../modules/db"

  allowed_sg     = ["Only add app server sg"]
  app_name       = local.app_name
  engine         = "mysql"
  engine_version = "5.7"
  instance_class = "implement lookup via locals"
  password       = "implement to fetch SSM parameter"
  username       = "db_app_user"
}