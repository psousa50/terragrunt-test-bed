include "root" {
  path = find_in_parent_folders()
}

include "module_2" {
  path   = "${dirname(find_in_parent_folders())}/_common/module_2.hcl"
}
