data "tfe_outputs" "result" {
  organization = var.tf_org
  workspace = var.tf_workspace
}

resource "email_email" "example" {
  to = var.email_receiver
  from = var.email_sender
  subject = "Good News from Terraform - ${var.tf_workspace}"
  body = <<EOT
   This is a test email sent from Terraform using a custom email provider.
   The outputs from ${var.tf_workspace} are
   ${data.tfe_outputs.result.values}
  EOT
  smtp_server = "smtp.gmail.com"
  smtp_port = "587"
  smtp_username = var.email_sender
  smtp_password = var.password_sender
}
