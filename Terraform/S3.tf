terraform {
  backend "s3" {
    bucket         = "itamar-s3bucket"
    key            = "itamar-terraform/state/terraform.tfstate"
    region         = "eu-west-1"
    encrypt        = false
  }
}
