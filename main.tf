module "dns" {
  source       = "genstackio/dns/aws"
  version      = "0.1.1"
  zone         = var.dns
  name         = var.env
  statics_file = var.statics_file
}

module "dns-google" {
  count                 = var.enable_google ? 1 : 0
  source                = "genstackio/dns/aws//modules/google"
  version               = "0.1.0"
  zone                  = module.dns.zone
  site_verification_ttl = 86400
  site_verification_id  = var.google_site_verification_id
}
