terraform {
  backend "s3" {
    key            = "webapp"
    region         = "us-east-2"
    dynamodb_table = "myapp-tfstate"
  }
}