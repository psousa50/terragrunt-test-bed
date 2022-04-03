include "root" {
  path = find_in_parent_folders()
}

include "module-1" {
  path   = "${dirname(find_in_parent_folders())}/_common/module-1.hcl"
}

inputs = {
  topic_name     = "module-1-a-simple-name"
}
