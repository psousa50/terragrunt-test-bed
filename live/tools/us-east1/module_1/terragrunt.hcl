include "root" {
  path = find_in_parent_folders()
}

include "module_1" {
  path   = "${dirname(find_in_parent_folders())}/_common/module_1.hcl"
}
