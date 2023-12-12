#---------------------------------------------------------------------------------------------------
# EC2
#---------------------------------------------------------------------------------------------------
module "ec2" {
  source = "git::https://gitlab.com/mbasri-terraform/modules/aws/terraform-aws-ec2?ref=v1.0.0"

  instance_name = local.instance_name
  description   = local.description

  ami           = "ami-0302f42a44bf53a45"
  instance_type = "t3.micro"

  disable_api_termination = false

  iam_instance_profile = module.iam-instance-profile.iam_instance_profile_id

  subnet_id = module.vpc.private_subnet_ids.0
  vpc_security_group_ids = [
    module.security-group.security_group_id
  ]

  user_data = data.template_cloudinit_config.main.rendered

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
    volume_size           = 500
    volume_type           = "io1"
    throughput            = null
  }

  tags = local.tags
}