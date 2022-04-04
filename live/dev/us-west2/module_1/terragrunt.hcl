locals {
  environment_vars = read_terragrunt_config(find_in_parent_folders("env.hcl"))

  environment      = local.environment_vars.locals.environment
  topic_name     = "module-1-a-simple-name-in-${local.environment}"
}

include "root" {
  path = find_in_parent_folders()
}

include "module_1" {
  path   = "${dirname(find_in_parent_folders())}/_common/module_1.hcl"
}

inputs = {
  topic_name     = local.topic_name
}
