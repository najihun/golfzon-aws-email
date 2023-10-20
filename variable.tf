variable "email_receiver" {
  type = string
}
variable "email_sender" {
  type = string
}
variable "password_sender" {
  type = string
  sensitive = true
}

variable "db_name" {
  description = "Unique name to assign to RDS instance"
}

variable "db_username" {
  description = "RDS root username"
}

variable "db_password" {
  description = "RDS root user password"
  sensitive   = true
}

variable "multi_az" {
  description = "Multi AZ Select"
}

variable "apply_immediately" {
  description = "Specifies whether any database modifications are applied immediately"
}
