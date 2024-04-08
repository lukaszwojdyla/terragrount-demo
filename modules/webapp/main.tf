module "sa" {
  source   = "./service-account"
  accounts = var.accounts
}

module "gar" {
  source           = "./artifactory"
  artifactory_name = var.artifactory_name
}