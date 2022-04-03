include "root" {
  path = find_in_parent_folders()
}

include "module-2" {
  path   = "${dirname(find_in_parent_folders())}/_common/module-2.hcl"
}
