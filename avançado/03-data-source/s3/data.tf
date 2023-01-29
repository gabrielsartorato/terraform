// Consumir dados de outra fonte terraform
data "terraform_remote_state" "server" {
  backend = "s3"

  config = {
    bucket = "tfstate-765212337127"
    key    = "dev/03-data-sourcer-s3/terraform/tfstate"
    region = var.aws_region
    profile = var.aws_profile
  }
}
