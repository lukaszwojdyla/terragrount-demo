module "sql" {
  source        = "./cloudsql"
  instance_name = var.instance_name
  databases     = var.databases
}