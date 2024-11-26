terraform {
  backend "s3" {
    bucket = "tf-backend-1"
    key    = "tf-backend-1"
    region = "ap-south-1"
  }
}