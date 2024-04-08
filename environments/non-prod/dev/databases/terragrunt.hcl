terraform {
  source = "${get_repo_root()}/modules/databases"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  instance_name = "db"
  databases     = ["webapp"]
}