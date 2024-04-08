terraform {
  source = "${get_repo_root()}/modules/shared"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  vpc_name = "default"
  vpc_subnets = ["us", "ue", "asia"]
}