locals {
  region = "eu-west-1"
  name   = "itamar-cluster"
  vpc_cidr = "10.123.0.0/16"
  azs      = ["eu-west-1a", "eu-west-1b"]
  public_subnets  = ["10.123.1.0/24", "10.123.2.0/24"]
  private_subnets = ["10.123.3.0/24", "10.123.4.0/24"]


}

provider "aws" {
  region = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket         = "itamar-s3bucket"
    key            = "itamar-terraform/state/terraform.tfstate"
    region         = "eu-west-1"
    encrypt        = false
  }
}
