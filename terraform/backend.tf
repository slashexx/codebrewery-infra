terraform {
  backend "s3" {
    bucket         = "codebrewery-terraform-state"
    key            = "codebrewery/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
  }
}
