variable "hostname" {
  type = string
  default = "app.terraform.io"
}
variable "token" {
  type = string
}
variable "tf_org" {
  type = string
}
variable "tf_workspace" {
  type = string
}
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
