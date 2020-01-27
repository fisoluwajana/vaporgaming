terraform {
  backend "s3" {
    bucket = "vaporgaming-tfstate-bucket"
    key    = "terraform.tfstate"
    region = "eu-west-1"
  }
}

