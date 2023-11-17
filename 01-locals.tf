#---------------------------------------------------------------------------------------------------
# locals variables
#---------------------------------------------------------------------------------------------------
locals {
  name   = "quick-aws-ec2"
  region = "eu-west-3"

  kms_name            = local.name
  vpc_name            = local.name
  security_group_name = local.name
  ec2_name            = local.name

  tags = {
    "Name"        = local.name,
    "Description" = "Quick AWS EC2",

    "billing:organisation"      = "mbasri",
    "billing:organisation-unit" = "labs",
    "billing:application"       = "quick-aws-ec2",
    "billing:environment"       = "dev",

    "security:compliance"     = "HIPAA",
    "security:data-sensitity" = "1",
    "security:encryption"     = "true",

    "technical:terraform"                     = "true",
    "technical:terraform:scm"                 = "https://gitlab.com/mbasri/quick-aws-ec2.git",
    "technical:terraform:required-version"    = "1.6.3",
    "technical:provider:aws:required-version" = "5.25.0"
  }
}
