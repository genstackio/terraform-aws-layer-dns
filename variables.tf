variable "env" {
  type = string
}
variable "dns" {
  type = string
}
variable "statics_file" {
  type    = string
  default = null
}
variable "enable_google" {
  type    = bool
  default = false
}
variable "google_site_verification_id" {
  type    = string
  default = ""
}