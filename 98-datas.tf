#---------------------------------------------------------------------------------------------------
# User data file ('ascii' format)
#---------------------------------------------------------------------------------------------------
data "template_cloudinit_config" "main" {
  gzip          = false
  base64_encode = true

  part {
    content_type = "text/x-shellscript"
    content = templatefile("${path.module}/scripts.d/01-init.sh.tpl", {
      region             = local.region
      ssm_parameter_name = local.ssm_parameter_name
    })
  }

  part {
    content_type = "text/x-shellscript"
    content = templatefile("${path.module}/scripts.d/02-tagger.sh.tpl", {
      region             = local.region
    })
  }
}
