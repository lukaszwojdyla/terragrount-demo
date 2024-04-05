terraform {
  backend "local" {
    path = "buckets/terraform.tfstate"
  }
}