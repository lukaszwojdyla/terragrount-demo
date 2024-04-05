resource "terraform_data" "instance" {
  input = var.instance_name
}

resource "terraform_data" "databases" {
  for_each = var.databases
  input    = each.key
}