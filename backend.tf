terraform {
  backend "s3" {
    bucket = "terraform-s3-locking"
    region = "ap-south-1"
    key = "statefile/terraform.tfstate"
    encrypt = "true"
    use_lockfile = "true"
  }
}