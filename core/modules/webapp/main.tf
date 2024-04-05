module "sa" {
  source   = "../../../modules/service-account"
  accounts = var.accounts
}

module "gar" {
  source           = "../../../modules/artifactory"
  artifactory_name = var.artifactory_name
}