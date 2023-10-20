resource "email_email" "example" {
  to = var.email_receiver
  from = var.email_sender
  subject = "Good News from Terraform"
  body = "This is a test email sent from Terraform using a custom email provider.\n The outputs from ${var.tf_workspace} are ${aws_db_instance.golfzon-aws-rds.address}"
  smtp_server = "smtp.gmail.com"
  smtp_port = "587"
  smtp_username = var.email_sender
  smtp_password = var.password_sender
}
