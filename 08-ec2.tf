#---------------------------------------------------------------------------------------------------
# EC2
#---------------------------------------------------------------------------------------------------
module "ec2" {
  source = "git::https://gitlab.com/mbasri-terraform/modules/aws/terraform-aws-ec2?ref=v1.2.0"

  instance_name = local.instance_name
  description   = local.description

  # Europe (Paris) eu-west-3
  # Amazon Linux 2023 AMI 2023.6.20250107.0 arm64 HVM kernel-6.1
  ami           = "ami-0ae9eb1a7a2e89c37"
  instance_type = "m7g.medium"

  disable_api_termination = false

  iam_instance_profile = module.iam-instance-profile.iam_instance_profile_id

  subnet_id = module.vpc.private_subnet_ids.0
  vpc_security_group_ids = [
    module.security-group.security_group_id
  ]

  user_data = data.cloudinit_config.main.rendered

  metadata_options = {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }

  ebs_optimized = true
  root_block_device = {
    delete_on_termination = true
    encrypted             = true
    iops                  = 3000
    kms_key_id            = module.kms.key_arn
    volume_size           = 30
    volume_type           = "gp3"
    throughput            = null
  }

  enable_spot_instance = true

  tags = local.tags
}