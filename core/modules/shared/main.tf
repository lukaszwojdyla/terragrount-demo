module "network" {
  source      = "../../../modules/networking"
  vpc_name    = var.vpc_name
  vpc_subnets = var.vpc_subnets
}