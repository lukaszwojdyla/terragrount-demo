module "network" {
  source      = "./networking"
  vpc_name    = var.vpc_name
  vpc_subnets = var.vpc_subnets
}