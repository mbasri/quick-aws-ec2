#---------------------------------------------------------------------------------------------------
# KMS
#---------------------------------------------------------------------------------------------------
module "kms" {
  source = "git::https://gitlab.com/mbasri-terraform/modules/aws/terraform-aws-kms?ref=v1.0.2"

  kms_name                = local.kms_name
  description             = "Used for quick AWS EC2"
  deletion_window_in_days = 7

  tags = local.tags
}
