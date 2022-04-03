locals {
  environment_vars = read_terragrunt_config(find_in_parent_folders("env.hcl"))
  region_vars      = read_terragrunt_config(find_in_parent_folders("region.hcl"))
  common_vars      = read_terragrunt_config(find_in_parent_folders("common.hcl"))

  environment      = local.environment_vars.locals.environment
  aws_account_id   = local.environment_vars.locals.aws_account_id
  aws_region       = local.region_vars.locals.aws_region

  topic_name       = "test-topic"
}

terraform {
  source = "${local.common_vars.locals.modules_folder}//module-1"
}

inputs = {
  environment    = local.environment
  aws_account_id = local.aws_account_id
  aws_region     = local.aws_region
  topic_name     = "module-2-${local.topic_name}-${local.aws_account_id}-${local.aws_region}-${local.environment}"
}
