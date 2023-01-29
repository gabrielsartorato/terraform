locals {
  common_tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Owner       = "Gabriel Sartorato"
    Environment = var.environment
    UpdatedAt   = "2022-04-26"
  }

  ip_filepath = "ips.json"
}

