terraform {
  source = "${get_repo_root()}/modules/webapp"
}

include "root" {
  path = find_in_parent_folders()
}
