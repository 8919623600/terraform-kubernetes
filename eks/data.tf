 
data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket  = "terraform-devops29master"
    key     = "${var.ENV}/vpc/terraform.tfstate"
    region  = "us-east-1"
  }
}