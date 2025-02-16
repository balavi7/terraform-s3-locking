terraform {
  backend "s3" {
    bucket = "yourbucketname"
    region = "ap-south-1"
    key = "statefile/terraform.tfstate"
    encrypt = "true"
    use_lockfile = "true"
  }
}
