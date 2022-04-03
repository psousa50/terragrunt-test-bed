locals {
  environment_vars = read_terragrunt_config(find_in_parent_folders("env.hcl"))
  region_vars      = read_terragrunt_config(find_in_parent_folders("region.hcl"))

  # Extract out common variables for reuse
  env              = local.environment_vars.locals.environment
  aws_account_id   = local.environment_vars.locals.aws_account_id
  aws_region       = local.region_vars.locals.aws_region

}

terraform {
  source = "../../../../modules//topics"
}

include {
  path = find_in_parent_folders()
}
inputs = {

  environment    = local.env
  aws_account_id = local.aws_account_id
  aws_region     = local.aws_region
}
