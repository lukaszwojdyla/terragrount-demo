resource "terraform_data" "accounts" {
  for_each = var.accounts
  input    = each.key
}