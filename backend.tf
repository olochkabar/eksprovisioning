/* resource "aws_s3_bucket" "olochs3" {
  bucket = "oloch-tf-test-bucket"
  #bucket_prefix = "eks/terraform.tfstate"

  tags = {
    Name        = "olochs3"
  }
} */

#YOU SHOULD CREATE THE S3 BUCKET SEPARATELY BEFORE USING THE BACKEND FEATURE TO AVOID ISSUES
/* terraform {
  backend "s3" {
    bucket = "oloch-tf-test-bucket"
    key    = "eks/terraform.tfstate"
    region = "ca-central-1"
  }
}*/
