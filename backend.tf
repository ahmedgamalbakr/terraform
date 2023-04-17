terraform {
  backend "s3" {
    bucket         = "ititf-labs"
    dynamodb_table = "tf_table_lock"
    key            = "terraform.tfstate"
    region         = "us-west-2"
  }
}
