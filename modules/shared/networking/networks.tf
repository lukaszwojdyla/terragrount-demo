resource "terraform_data" "vpc" {
  input = var.vpc_name
}

resource "terraform_data" "subnet" {
  for_each = var.vpc_subnets
  input    = each.key
}