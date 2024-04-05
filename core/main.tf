module "shared" {
  source      = "./modules/shared"
  vpc_name    = var.vpc_name
  vpc_subnets = var.vpc_subnets
}

module "databases" {
  source        = "./modules/databases"
  instance_name = var.instance_name
  databases     = var.databases
}

module "webapp" {
  source           = "./modules/webapp"
  artifactory_name = var.artifactory_name
  accounts         = var.accounts
}