data "tfe_outputs" "result" {
  organization = var.tf_org
  workspace = var.workspace
}

resource "email_email" "example" {
  to = var.email_receiver
  from = var.email_sender
  subject = "Good News from Terraform - ${var.workspace}"
  body = <<EOT
   This is a test email sent from Terraform using a custom email provider.
   The outputs from ${data.tfe_outputs.result.workspace} are
   ${data.tfe_outputs.result.values}
  EOT
  smtp_server = "smtp.gmail.com"
  smtp_port = "587"
  smtp_username = var.email_sender
  smtp_password = var.password_sender
}
