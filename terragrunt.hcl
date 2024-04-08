locals {
   env_vars = read_terragrunt_config(find_in_parent_folders("env.hcl"))
   common_vars = read_terragrunt_config(find_in_parent_folders("common.hcl"))
   global_vars = read_terragrunt_config(find_in_parent_folders("global.hcl"))

   env = local.env_vars.locals.env
   project_id = local.env_vars.locals.project_id
}


remote_state {
  backend = "local"
  config = {
    path = "${get_parent_terragrunt_dir()}/buckets/${path_relative_to_include()}/terraform.tfstate"
  }

  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}

inputs = merge(
  local.env_vars.locals,
  local.common_vars.locals,
  local.global_vars.locals
)